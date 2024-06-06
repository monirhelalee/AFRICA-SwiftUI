//
//  GalleryView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 29/5/24.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES

    @State private var selectedAnimal: String = "lion"

    // Simple grid definition
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//    ]
    // Efficient grid defination

    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)

    // MARK: - Body

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                // MARK: - Image

                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.white, lineWidth: 8)
                    )

                // MARK: - Grid

                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(
                                        .white, lineWidth: 1)
                            )
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    } //: loop
                } //: Grid
            } //: Vstack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //: Scroll
        .frame(width: .infinity, height: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - Preview

#Preview {
    GalleryView()
}
