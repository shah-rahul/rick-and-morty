//
//  RMService.swift
//  Rick and morty
//
//  Created by Rahul  on 12/01/24.
//

import Foundation

/// Primary Api service object to get data
final class RMService {
    
    /// shared singleton instance
    static let shared = RMService()
    
    /// privatized constructor
    private init() {}
    enum RMServiceError : Error {
        case failedToCreateRequest
        case failedToGetData
    }    /// send Rick and morty API cal
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: call back with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type : T.Type,
        completion: @escaping (Result<T, Error>)->Void) {
          guard let urlRequest = self.request(from: request) else {
              completion(.failure(RMServiceError.failedToCreateRequest))
              return
            }
            let task = URLSession.shared.dataTask(with: urlRequest) {data,_,error in guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                    return
                }
                
                // decode the stuff
                do {
                    let res = try JSONDecoder().decode(type.self, from: data)
                    completion(.success(res))
                }
                catch {
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    // MARK :- Private
    
    private func request( from rmRequest : RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {return nil}
        var request = URLRequest(url : url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
