//
//  CountriesViewModel.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import Foundation

class CountriesViewModel: ObservableObject {
    @Published var countries = europeanCountries
    
    func upgradeScore(countryToUpdate: Country) {
        let index = countries.firstIndex(where: { country in
            countryToUpdate.code == country.code
        })
        
        if let index {
            countries[index].score += 1
        }
    }
    
    func downgradeScore(countryToUpdate: Country) {
        let index = countries.firstIndex(where: { country in
            countryToUpdate.code == country.code
        })
        
        if let index {
            countries[index].score -= 1
        }
    }
    
    func toggleFavorites(countryToUpdate: Country) {
        let index = countries.firstIndex(where: { country in
            countryToUpdate.code == country.code
        })
        
        if let index {
            countries[index].isFavorite.toggle()
        }
    }
    
}
