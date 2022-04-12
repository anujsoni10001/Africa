//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Anuj Soni on 10/04/22.
//

import Foundation
import AVKit

var videoPlayer:AVPlayer?

func playVideo(fileName:String,fileFormat:String) -> AVPlayer{
if let bundle = Bundle.main.url(forResource:fileName, withExtension: fileFormat){
    videoPlayer = AVPlayer(url: bundle)
    videoPlayer?.play()
}
return videoPlayer!
}
