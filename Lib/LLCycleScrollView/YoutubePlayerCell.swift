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

    @IBOutlet weak var playerView: YouTubePlayerView!

    var delegate : YouTubePlayerDelegate?
    
    func configureWith(videoId : String) {
        self.playerView.loadVideoID(videoId)
        self.playerView.delegate = self
    }

}
extension YoutubePlayerCell: YouTubePlayerDelegate {
    
    func playerStateChanged(_ videoPlayer: YouTubePlayerView, playerState: YouTubePlayerState) {
        self.delegate?.playerStateChanged(videoPlayer, playerState: playerState)
    }
}
