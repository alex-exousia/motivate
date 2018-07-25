//
//  CellContentTableViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer

class CellContentTableViewCell: UITableViewCell {
    
        @IBOutlet var videoPlayer: YouTubePlayerView!
   
        let myVideoURL = URL(string: "https://www.youtube.com/watch?v=mgmVOuLgFB0")
        videoPlayer.loadVideoURL(myVideoURL! as URL)    
}
