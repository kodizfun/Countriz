//
//  CountryDetails.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import SwiftUI

struct CountryDetails: View {
    let country: Country
    @ObservedObject var viewModel: CountriesViewModel
    @EnvironmentObject var userSettings: UserSettings
    var body: some View {
        VStack {
            Image(country.code).resizable().aspectRatio(contentMode: .fit)
            Text(country.description)
            
            if userSettings.canUpdateCountry {
                HStack {
                    Button(action: {
                        viewModel.downgradeScore(countryToUpdate: country)
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                    })
                    Button(action: {
                        viewModel.upgradeScore(countryToUpdate: country)
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                }
            }
            
        }
        .padding()
        .navigationTitle(country.name)
    }
}

struct CountryDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CountryDetails(
                country: europeanCountries[0],
                viewModel: CountriesViewModel()
            ).environmentObject(UserSettings())
        }
    
    }
}
