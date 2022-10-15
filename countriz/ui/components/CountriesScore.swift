//
//  CountriesScore.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 15/10/2022.
//

import SwiftUI

struct CountriesScore: View {
    @ObservedObject var viewModel: CountriesViewModel
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(viewModel.countries) { country in
                Text("\(country.name.uppercased()) : \(country.score)")
                    .bold()
                    .foregroundColor(.white)
            }
        }
        .padding(40)
        .background(Color.accentColor)
        .cornerRadius(12)
    }
}

struct CountriesScore_Previews: PreviewProvider {
    static var previews: some View {
        CountriesScore(viewModel: CountriesViewModel())
    }
}
