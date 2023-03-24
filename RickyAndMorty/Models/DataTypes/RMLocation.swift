//
//  RMLocation.swift
//  RickyAndMorty
//
//  Created by EMİN ÇETİN on 21.02.2023.
//

import Foundation

struct RMLocation: Codable {
    
         let id: Int
         let name: String
         let type: String
         let dimension: String
         let residents: [String]
         let url: String
         let created: String
   }

