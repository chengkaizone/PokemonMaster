//
//  LoadAbilityRequest.swift
//  PokemonMaster
//
//  Created by tony on 2020/1/6.
//  Copyright © 2020 tony. All rights reserved.
//

import Foundation
import Combine

struct LoadAbilityRequest {
    let pokemonAbility: Pokemon.AbilityEntry
    
    var publisher: AnyPublisher<AbilityViewModel, AppError> {
        URLSession.shared
            .dataTaskPublisher(for: pokemonAbility.ability.url)
            .map { $0.data }
            .decode(type: Ability.self, decoder: appDecoder)
            .map { AbilityViewModel(ability: $0) }
            .mapError { AppError.networkingFailed($0) }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
