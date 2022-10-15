//
//  ContentView.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var countriesViewModel = CountriesViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                CountriesScore(viewModel: countriesViewModel)
                ForEach(countriesViewModel.countries) { country in
                    CountryItem(country: country, viewModel: countriesViewModel)
                }.navigationTitle("Countries")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
