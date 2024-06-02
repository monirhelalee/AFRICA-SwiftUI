//
//  VideoPlayerHelper.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 2/6/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormate: String) -> AVPlayer{
    if Bundle.main.url(forResource: fileName, withExtension: fileFormate) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormate)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
