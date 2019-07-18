//
//  NetworkingManager.swift
//  PokemonList
//
//  Created by Juan Fernando Castellanos on 7/17/19.
//  Copyright © 2019 fcastellanos. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager : BindableObject {
    typealias PublisherType = PassthroughSubject<NetworkingManager, Never>
    
    var didChange = PublisherType()
    var willChange = PublisherType()
    
    var pokemonList = PokemonAPIList(results: []) {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(PokemonAPIList.self, from: data)
            print(pokemonList)
            DispatchQueue.main.async {
                self.pokemonList = pokemonList
            }
        }.resume()
    }
}
