//
//  ContentView.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSettings = false
    @StateObject var countriesViewModel = CountriesViewModel()
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        NavigationView {
            ScrollView {
                if userSettings.canUpdateCountry {
                    CountriesScore(viewModel: countriesViewModel)
                }
                ForEach(countriesViewModel.countries) { country in
                    CountryItem(country: country, viewModel: countriesViewModel)
                }.navigationTitle("Countries")
            }
            .fullScreenCover(isPresented: $showSettings, content: {
                SettingsView(shouldShow: $showSettings)
            })
            .toolbar {
                Button(action: {
                    showSettings.toggle()
                }, label: {
                    Image(systemName: "gearshape.fill")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
