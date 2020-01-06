//
//  PokemonInfoPanel.swift
//  Pokemon
//
//  Created by tony on 2019/11/23.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct PokemonInfoPanel: View {
    
    @EnvironmentObject var store: Store
    
    let model: PokemonViewModel
    var abilities: [AbilityViewModel]? {
        store.appState.pokemonList.abilityViewModels(for: model.pokemon)
    }
    
    var topIndicator: some View {
        RoundedRectangle(cornerRadius: 3)
        .frame(width: 40, height: 6)
            .opacity(0.2)
    }
    
    var pokemonDescription: some View {
        Text(model.descriptionText)
            .font(.callout)
            .foregroundColor(Color(hex: 0x666666))
            .fixedSize(horizontal: false, vertical: true)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            topIndicator
            Header(model: model)
            pokemonDescription
            Divider()
            AbilityList(model: model, abilityModels: abilities)
        }.padding(EdgeInsets(top: 12, leading: 30, bottom: 30, trailing: 30))
            .blurBackground(style: .systemMaterial)
            .cornerRadius(20)
        .fixedSize(horizontal: false, vertical: true)
    }
}

#if DEBUG
struct PokemonInfoPanel_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel(model: .sample(id: 1))
    }
}

#endif

