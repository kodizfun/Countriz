//
//  CountryCell.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import SwiftUI

struct CountryItem: View {
    
    let country: Country
    @State private var expanded = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(country.code)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 80)
                VStack(alignment: .leading) {
                    Text(country.name).bold()
                    Text(country.code.uppercased())
                }
                Spacer()
                Button(expanded ? "See less" : "See more") {
                    withAnimation {
                        expanded.toggle()
                    }
                }
            }
            
            if(expanded) {
                Text(country.description)
                
                Spacer().frame(height: 12)
                NavigationLink(
                    "DETAILS",
                    destination: CountryDetails(country: self.country)
                )
            }

        }.padding()
    }
}

struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryItem(country: europeanCountries[0])
    }
}
