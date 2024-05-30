//
//  InsetGalleryView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 31/5/24.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment:.center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }//: Hstack
        }//: Scroll
        
    }
}

// MARK: - PREVIEW
#Preview {
    InsetGalleryView(animal: animals[2])
}
