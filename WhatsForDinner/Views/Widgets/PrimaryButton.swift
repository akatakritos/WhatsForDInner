//
//  PrimaryButton.swift
//  WhatsForDinner
//
//  Created by Matt Burke on 1/17/21.
//

import Foundation
import SwiftUI

struct PrimaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(.white)
            .padding()
            .background(Color.pink)
            .cornerRadius(8)
    }

}
