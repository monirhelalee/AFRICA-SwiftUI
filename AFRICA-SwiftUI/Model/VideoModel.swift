//
//  VideoModel.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 2/6/24.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id, name, headline : String
    
    // Compute Property
    var thumbnail: String {
        "video-\(id)"
    }
}
