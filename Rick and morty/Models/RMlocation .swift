//
//  RMlocation .swift
//  Rick and morty
//
//  Created by Rahul  on 11/01/24.
//

import Foundation

struct RMLocations : Codable {
          let id: Int
          let name: String
          let type: String
          let dimension: String
          let residents: [String]
          let url: String
          let created: String
}
