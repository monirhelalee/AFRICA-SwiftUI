//
//  VideoListView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 29/5/24.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES

    @State var videos: [Video] = Bundle.main.decode("videos.json")

    // MARK: - BODY

    var body: some View {
        NavigationView {
            List(videos) { video in
                VideoListItemView(video: video)
                    .padding(.vertical, 8)
            } //: List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button( action:{
                        //Shuffle videos
                        videos.shuffle()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: Navigation
    }
}

// MARK: - PREVIEW

#Preview {
    VideoListView()
}
