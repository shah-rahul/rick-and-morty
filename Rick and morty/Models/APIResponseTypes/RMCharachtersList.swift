//
//  RMCharachtersList.swift
//  Rick and morty
//
//  Created by Rahul  on 12/01/24.
//

import Foundation


struct RMCharachtersList : Codable{
    let info :RMCharacterListinfo
    let results : [RMCharacter]
}


struct RMCharacterListinfo : Codable {
    let count : Int
    let pages : Int
    let next : String?
    let prev : String?
}

