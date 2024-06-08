//
//  CenterModifier.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 8/6/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
