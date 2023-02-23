//
//  RMEndpoint.swift
//  RickyAndMorty
//
//  Created by EMİN ÇETİN on 21.02.2023.
//

import Foundation
/// Represents unique API endpoint
@frozen enum RMEndpoint: String{
    /// Endopoint to get character info
    case character //"character"
    /// Endopoint to get location info
    case location
    /// Endopoint to get episode info
    case episode
       
}
