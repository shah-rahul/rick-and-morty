//
//  RMRequest.swift
//  Rick and morty
//
//  Created by Rahul  on 12/01/24.
//

import Foundation

/// Object that represents a single api call 
final class RMRequest {
   //base url
    private struct Constants  {
         static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// desired endpoint
   private let endpoint : RMEndpoint
    
    /// path components ( not required )
   private let pathComponents : Set<String>
    
    /// query parameters ( not required )
   private let queryParameters : [URLQueryItem]
    
    ///  this is the actual URL generator the query parameter fx loops in params then if value == name then it joins gaurd checks if the value is NULL or Not
    
   private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)" }
                ).joined(separator: "&")
            string += argumentString
            }
        return string
    }
    public var url : URL? {
        return URL(string: urlString)
    }
    
    /// we put this [] empty bracket as these values could be null and they arent always required
    /// - Parameters:
    ///   - endpoint: the endpoint based on enum
    ///   - pathComponents: the path and other specificatons collection
    ///   - queryParameter: the query parameters like name and status collection
     init(endpoint: RMEndpoint, pathComponents: Set<String>=[], queryParameter: [URLQueryItem]=[]) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameter
    }
    
    /// generic get request ( as RMAPI is ony get )
    public let httpMethod = "GET"
    
}
