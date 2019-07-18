//
//  PokemonAPIList.swift
//  PokemonList
//
//  Created by Juan Fernando Castellanos on 7/17/19.
//  Copyright © 2019 fcastellanos. All rights reserved.
//

import Foundation
import SwiftUI

struct PokemonAPIList : Decodable {
    var results: [PokemonListEntry]
}

struct PokemonListEntry : Decodable {
    var name: String
    var url: String
}


//{
//  "count": 964,
//  "next": "https://pokeapi.co/api/v2/pokemon?offset=60&limit=60",
//  "previous": null,
//  "results": [
//    {
//      "name": "bulbasaur",
//      "url": "https://pokeapi.co/api/v2/pokemon/1/"
//    },
//    {
//      "name": "ivysaur",
//      "url": "https://pokeapi.co/api/v2/pokemon/2/"
//    },
