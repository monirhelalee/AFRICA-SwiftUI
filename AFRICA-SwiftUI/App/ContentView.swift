//
//  ContentView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 29/5/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    let animals: [Animal] = Bundle.main.decode("animals.json")
    @State private var isGridViewActive: Bool = false

    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColum: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"

    // MARK: - Function

    func GridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColum = gridLayout.count

        // Toolbar Image
        switch gridColum {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }

    // MARK: - BODY

    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            } //: Navigationlink
                        } //: Loop
                    } //: List
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                } //: Navigationlink
                            }
                        } //: Grid
                        .padding(10)
                        .animation(.easeIn)
                    } //: Scroll
                } //: Condition
            } //: Group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // List
                        Button(action: {
                            print("list")
                            isGridViewActive = false
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }

                        // Grid
                        Button(action: {
                            print("Grid")
                            isGridViewActive = true
                            GridSwitch()
                        }) {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                    } //: HStack
                } //: Button
            } //: Toolbar
        } //: Navigation
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
