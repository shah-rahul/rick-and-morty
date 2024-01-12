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
    
    /// send Rick and morty API cal
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: call back with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type : T.Type,
        completion: @escaping (Result<T, Error>)->Void) {
            
        }
}
