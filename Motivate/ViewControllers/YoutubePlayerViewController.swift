//
//  YoutubePlayerViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer

class YouTubePlayerViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myVideoURL = URL(string: "https://www.youtube.com/watch?v=mgmVOuLgFB0")
        videoPlayer.loadVideoURL(myVideoURL! as URL)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var videoPlayer: YouTubePlayerView!
    
}
