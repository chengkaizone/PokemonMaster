//
//  PokemonList.swift
//  Pokemon
//
//  Created by tony on 2019/11/23.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    
    @EnvironmentObject var store: Store
    
    var pokemonList: AppState.PokemonList {
        store.appState.pokemonList
    }
    
    var body: some View {
        ScrollView {
            TextField("搜索", text: $store.appState.pokemonList.searchText.animation(nil))
            .frame(height: 40)
                .padding(.horizontal, 25)
            ForEach(PokemonViewModel.all) { pokemon in
                PokemonInfoRow(model: pokemon, expanded: self.pokemonList.selectionState.isExpanding(pokemon.id))
                    .onTapGesture {
                        self.store.dispatch(.toggleListSelection(index: pokemon.id))
                        self.store.dispatch(.loadAbilities(pokemon: pokemon.pokemon))
                }
            }
            Spacer().frame(height: 8)
        }
    }
    
}

#if DEBUG
struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList().environmentObject(Store())
    }
}

#endif
