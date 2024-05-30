//
//  HeadingView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 31/5/24.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    // MARK: - BODY

    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }//:Hstack
        .padding(.vertical)
    }
}

// MARK: - PREVIEW

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Lion")
}
