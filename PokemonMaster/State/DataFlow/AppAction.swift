//
//  AppAction.swift
//  PokemonMaster
//
//  Created by tony on 2020/1/6.
//  Copyright © 2020 tony. All rights reserved.
//

import Foundation

enum AppAction {
    case login(email: String, password: String)
    case accountBehaviorDone(result: Result<User, AppError>)
    case logout
    case emailValid(valid: Bool)
    case clearCache
    
    case toggleListSelection(index: Int?)
    case togglePanelPresenting(presenting: Bool)
    
    case loadPokemons
    case loadPokemonsDone(result: Result<[PokemonViewModel], AppError>)
    
    case loadAbilities(pokemon: Pokemon)
    case loadAbilitiesDone(result: Result<[AbilityViewModel], AppError>)
    
    case closeSafariView
    
}
