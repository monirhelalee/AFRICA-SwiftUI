//
//  AnimalListItemView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 30/5/24.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal

    // MARK: - BODY

    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 12) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: Vstack
        }//: Hstack
    }
}

// MARK: - PREVIEW
let animals: [Animal] = Bundle.main.decode("animals.json")
#Preview {
    AnimalListItemView(animal: animals[1])
        .previewLayout(.sizeThatFits)
        .padding()
}
