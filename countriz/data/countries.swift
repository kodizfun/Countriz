//
//  countries.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import Foundation

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let code: String
    let description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut interdum libero, non condimentum mauris. Etiam ullamcorper justo quis gravida aliquet. Fusce sed magna faucibus, molestie libero non, pellentesque arcu. Nulla nec porttitor turpis. In porta nunc et felis facilisis tristique. Nunc volutpat leo risus, nec viverra odio tristique eu. Fusce fermentum diam in mi vulputate pharetra. Vivamus ornare vulputate orci, facilisis porttitor enim. Nullam suscipit purus feugiat tempor posuere."
    var score: Int = 0
}

let europeanCountries = [
    Country(name: "France", code: "fra"),
    Country(name: "Belgium", code: "bel"),
    Country(name: "Portugal", code: "prt"),
    Country(name: "Spain", code: "esp"),
    Country(name: "Italy", code: "ita"),
    Country(name: "Germany", code: "deu")
]
