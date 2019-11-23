//
//  PokemonList.swift
//  Pokemon
//
//  Created by tony on 2019/11/23.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandingIndex: Int?
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            TextField("搜索", text: $searchText)
            .frame(height: 40)
                .padding(.horizontal, 25)
            ForEach(PokemonViewModel.all) { pokemon in
                PokemonInfoRow(model: pokemon, expanded: self.expandingIndex == pokemon.id)
                    .onTapGesture {
                        if self.expandingIndex == pokemon.id {
                            self.expandingIndex = nil
                        } else {
                            self.expandingIndex = pokemon.id
                        }
                }
            }
            
        }.overlay(
            VStack {
                Spacer()
                PokemonInfoPanel(model:
                    .sample(id: 1))
            }.edgesIgnoringSafeArea(.bottom)
        )
    }
    
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}

