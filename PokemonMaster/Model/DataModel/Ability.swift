//
//  Ability.swift
//  Pokemon
//
//  Created by tony on 2019/11/23.
//  Copyright © 2019 tony. All rights reserved.
//

import Foundation

struct Ability: Codable {
    
    struct Name: Codable, LanguageTextEntry {
        let language: Language
        let name: String
        
        var text: String { name }
    }
    
    struct FlavorTextEntry: Codable, LanguageTextEntry {
        let language: Language
        let flavorText: String
        
        var text: String { flavorText }
    }
    
    let id: Int
        
    let names: [Name]
    let flavorTextEntries: [FlavorTextEntry]
}
