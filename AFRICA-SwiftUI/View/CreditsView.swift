//
//  CreditsView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 8/6/24.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
            Copyright © Monir Haider
            All right reserves
            ♡
            """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: Vstack
        .padding()
        .opacity(0.4)
    }
}

// MARK: - PREVIEW

#Preview {
    CreditsView()
}
