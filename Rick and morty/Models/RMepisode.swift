//
//  RMepisode.swift
//  Rick and morty
//
//  Created by Rahul  on 11/01/24.
//

import Foundation

struct RMepisode : Codable {
       let id: Int
       let name: String
       let air_date: String
       let episode: String
       let characters: [String]
       let url:String
       let created: String
}
