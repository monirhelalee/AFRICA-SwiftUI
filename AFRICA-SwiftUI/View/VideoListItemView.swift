//
//  VideoListItemView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 2/6/24.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - PROPERTIES
    let video: Video

    // MARK: - BODY

    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//: ZStack
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }
        }//: HStack
    }
}

// MARK: - PREVIEW
let videos: [Video] = Bundle.main.decode("videos.json")
#Preview {
    VideoListItemView(video: videos[0])
}
