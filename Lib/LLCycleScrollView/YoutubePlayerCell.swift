//
//  YoutubePlayerCell.swift
//  LLCycleScrollView
//
//  Created by adilcan çığ on 1.06.2018.
//  Copyright © 2018 LvJianfeng. All rights reserved.
//

import UIKit
import YouTubePlayer

class YoutubePlayerCell: UICollectionViewCell {

    var playerView: YouTubePlayerView?

    var delegate : YouTubePlayerDelegate?
    override func awakeFromNib() {
       
      
    }
    func configureWith(videoId : String) {
        self.playerView = YouTubePlayerView(frame: .zero)
        self.addSubview(playerView!)
        self.playerView?.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 9.0, *) {
            self.playerView?.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            self.playerView?.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
            self.playerView?.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
            self.playerView?.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        playerView?.playerVars = [
            "playsinline": "1",
            "controls": "1",
            "showinfo": "0"
            ] as YouTubePlayerView.YouTubePlayerParameters
        self.playerView?.loadVideoID(videoId)
        self.playerView?.delegate = self
    }

}
extension YoutubePlayerCell: YouTubePlayerDelegate {
    
    func playerStateChanged(_ videoPlayer: YouTubePlayerView, playerState: YouTubePlayerState) {
        self.delegate?.playerStateChanged(videoPlayer, playerState: playerState)
    }
}
