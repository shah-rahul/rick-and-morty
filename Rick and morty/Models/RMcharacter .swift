//
//  RMcharacher .swift
//  Rick and morty
//
//  Created by Rahul  on 11/01/24.
//

import Foundation
struct RMCharacter : Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMcharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let  image: String
    let  episode: [String]
    let url: String
   let created: String
}

