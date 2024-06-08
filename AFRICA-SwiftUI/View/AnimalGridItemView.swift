//
//  AnimalGridItemView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 7/6/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    // MARK: - Body

    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Preview

#Preview {
    AnimalGridItemView(animal: animals[0])
}
