//
//  SettingsView.swift
//  SimWheels
//
//  Created by Kostya Bunsberry on 16.03.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Toggle("Open on launch", isOn: .constant(false))
        }.frame(minWidth: 400, minHeight: 200)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
