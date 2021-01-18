//
//  SettingsPage.swift
//  WhatsForDinner
//
//  Created by Matt Burke on 1/17/21.
//

import SwiftUI

struct SettingsPage: View {

    @EnvironmentObject private var model: AppModel

    func onDelete(offsets: IndexSet) {
        model.restaurants.remove(atOffsets: offsets)
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(model.restaurants) {
                    Text($0.name)
                }
                .onDelete(perform: onDelete)
            }
            .navigationTitle("Settings")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink(destination: EditPage()) {
                        Image(systemName: "plus.circle")
                    }
            )
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
            .environmentObject(AppModel.sample())
    }
}
