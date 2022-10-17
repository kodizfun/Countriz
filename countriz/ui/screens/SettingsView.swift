//
//  SettingsView.swift
//  countriz
//
//  Created by Sengsathit SILALAK on 17/10/2022.
//

import SwiftUI

struct SettingsView: View {
    @Binding var shouldShow: Bool
    @EnvironmentObject var userSettings: UserSettings
    var body: some View {
        VStack {
            Toggle("Can update country", isOn: $userSettings.canUpdateCountry)
            Button("CLOSE") {
                shouldShow.toggle()
            }
        }.padding()
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(shouldShow: Binding.constant(false))
            .environmentObject(UserSettings())
    }
}
