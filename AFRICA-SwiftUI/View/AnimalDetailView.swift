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
                            .offset(y: 24)
                    )

                // MARK: - Headline

                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)

                // MARK: - Gallery

                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
                    InsetGalleryView(animal: animal)
                } //: group
                .padding(.horizontal)

                // MARK: - Fact

                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                } //: Group
                .padding(.horizontal)

                // MARK: - Description

                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/ .leading/*@END_MENU_TOKEN@*/)
                        .layoutPriority(1)
                } //: Group
                .padding(.horizontal)

                // MARK: - Map
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }//: Group
                    .padding(.horizontal)
                // MARK: - Link
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWeblinkView(animal: animal)
                }//: Group
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
