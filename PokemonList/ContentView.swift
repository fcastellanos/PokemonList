//
//  ContentView.swift
//  PokemonList
//
//  Created by Juan Fernando Castellanos on 7/17/19.
//  Copyright © 2019 fcastellanos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var networkingManager = NetworkingManager()

    var body: some View {        
        List(networkingManager.pokemonList.results, id: \.url) { pokemon in
            Text(pokemon.name.capitalized)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
