//
//  EditPage.swift
//  WhatsForDinner
//
//  Created by Matt Burke on 1/17/21.
//

import SwiftUI

struct EditPage: View {
    let original: Restaurant?
    @State private var draft: Restaurant = Restaurant.empty

    init(original: Restaurant? = nil) {
        self.original = original
    }

    func createDraft() {
        if original == nil {
            draft = Restaurant.empty
        } else {
            draft = original!
        }
    }

    func update() {

    }

    var body: some View {
        EditForm(draft: $draft)
            .onAppear(perform: createDraft)
            .onDisappear(perform: update)
    }
}

struct EditForm: View {

    @Binding var draft: Restaurant

    var body: some View {
        Form {
            TextField("Name", text: $draft.name)
        }
    }
}

struct EditPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EditPage(original: Restaurant.samples[0])
            EditPage()
        }
    }
}
