//
//  AnimalDetailView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 31/5/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // MARK: - Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                // MARK: - Headline
                Text(animal.headline)
                    .font(.headline)
                
                    .multilineTextAlignment(.leading)
                    
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                // MARK: - Gallery
                Group{
                   HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
                    InsetGalleryView(animal: animal)
                }//:group
                .padding(.horizontal)
                // MARK: - Fact

                // MARK: - Description

                // MARK: - Map

                // MARK: - Link
            } //: Vstack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

// MARK: - PREVIEW

#Preview {
    NavigationView {
        AnimalDetailView(animal: animals[2])
    }
}
