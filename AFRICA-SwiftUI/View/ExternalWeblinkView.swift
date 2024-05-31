//
//  ExternalWeblinkView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 31/5/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    // MARK: - BODY

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }//: group
                .foregroundColor(.accentColor)
            }//: Hstack
        }//: Groupbox
    }
}

// MARK: - PREVIEW
#Preview {
    ExternalWeblinkView(animal: animals[2])
}
