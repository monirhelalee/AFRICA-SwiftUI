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
    // MARK: - BODY

    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals){ animal in
                    NavigationLink(destination:AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }//: Navigationlink
                    
                }//: Loop
            }//: List
            .navigationBarTitle("Africa", displayMode: .large)
        }//: Navigation
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
