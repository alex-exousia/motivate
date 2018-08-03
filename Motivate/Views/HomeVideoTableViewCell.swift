//
//  VideoTableViewCell.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/25/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer

class HomeVideoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var videoPlayer: YouTubePlayerView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var videoLengthLabel: UILabel!
    
}
