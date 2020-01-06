//
//  User.swift
//  PokemonMaster
//
//  Created by tony on 2020/1/6.
//  Copyright © 2020 tony. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var email: String
    var favoritePokemonIDs: Set<Int>
    
    func isFavoritePokemon(id: Int) -> Bool {
        favoritePokemonIDs.contains(id)
    }
    
}
