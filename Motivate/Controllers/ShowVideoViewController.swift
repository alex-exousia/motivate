//
//  showVideoViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 8/1/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer
import NVActivityIndicatorView

class ShowvideoViewController: UIViewController {
    
    // MARK: - Properties
    var video: VideosInCategories?
//    activityIndicatorView.startAnimating()
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var showVideoYoutubePlayerView: YouTubePlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(video?.author)
        print(video?.link)
    }
    
}

