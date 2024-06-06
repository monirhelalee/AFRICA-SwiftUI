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

//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    // Dynamic grid layout
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0

    // MARK: - Function

    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }

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

                // MARK: - Slider

                Slider(value: $gridColumn, in: 2 ... 5, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn, initial: false) {
                        gridSwitch()
                    }

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
                                        .white, lineWidth: 1
                                    )
                            )
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    } //: loop
                } //: Grid
                .animation(.easeInOut)
                .onAppear(perform: {
                    gridSwitch()
                })
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
