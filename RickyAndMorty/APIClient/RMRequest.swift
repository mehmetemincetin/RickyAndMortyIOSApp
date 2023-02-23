//
//  RMRequest.swift
//  RickyAndMorty
//
//  Created by EMİN ÇETİN on 21.02.2023.
//

import Foundation
/// Objcet that represents a singlet API call     
final class RMRequest {
//    API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
//    Desired endpoint
    private let endpoint: RMEndpoint
//    Path components for API,if any
    private let pathComponents: Set<String>
//    Query arguments for API,if any
    private let queryParameters: [URLQueryItem]
//    Constructed url for the api request in string format
    
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
            let argumentStrimg = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentStrimg
        }
       return string
    }
//    Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
//    Desired jttp method
    public let httpMethod = "GET"
//    MARK: -Public
//   Construct request
//    -Parameters:
//    -endpoint: Target endpoint
//    -pathComponents: Collection of Path components
//    -queryParameters: Collectuon of query parameters
    
    
    
    

    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
){
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

