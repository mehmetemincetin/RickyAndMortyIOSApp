//
//  RMService.swift
//  RickyAndMorty
//
//  Created by EMİN ÇETİN on 21.02.2023.
//
//
import Foundation
/// Primary API service object to get Rick and Morty data
final class RMService {
    ///Shared singlenton instance
    static let shared = RMService()
    
    ///Privatized constructor
    private init() { }

        ///Send Rick and Morty API Call
        ///-Parameters:
        /// -request: Request instance
        /// -type: The type of object we expect to get back
        /// -completion: Callback with data or error
    public func execute<T: Codable>(
        _ request:RMRequest,
        expecting type: T.Type,
        completion: (Result<T,Error>) -> Void
    ){
        
    }
}
