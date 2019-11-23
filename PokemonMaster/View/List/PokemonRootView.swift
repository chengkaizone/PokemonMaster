//
//  File.swift
//  Pokemon
//
//  Created by tony on 2019/11/23.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct PokemonRootView: View {
    
    var body: some View {
        NavigationView {
            PokemonList().navigationBarTitle("宝可梦列表")
        }
    }
}

struct PokemonListRoot_Previews: PreviewProvider {
    
    static var previews: some View {
        PokemonRootView()
    }
}
