//
//  GalleryView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 29/5/24.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack {
                Spacer()
                Text("Gallery")
                Spacer()
            }
        } //: Scroll
        .frame(width: .infinity, height: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
