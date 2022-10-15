//
//  CountryDetails.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import SwiftUI

struct CountryDetails: View {
    let country: Country
    var body: some View {
        VStack {
            Image(country.code).resizable().aspectRatio(contentMode: .fit)
            Text(country.description)
        }.padding()
            .navigationTitle(country.name)
    }
}

struct CountryDetails_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetails(country: europeanCountries[0])
    }
}
