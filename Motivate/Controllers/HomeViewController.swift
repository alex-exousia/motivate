//
//  HomeViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import YouTubePlayer
import UIKit
import GameplayKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    var videos = [
        Video(title: "Why Do We Fall", author: "Mateusz M", duration: "6:13", link: "https://www.youtube.com/watch?v=mgmVOuLgFB0"),
        Video(title: "Prove Them Wrong", author: "Be Inspired", duration: "6:59", link: "https://www.youtube.com/watch?v=CPQ1budJRIQ&t=20s"),
        Video(title: "Why it Pays to Be Hungry | Les Brown |", author: "Goalcast", duration: "6:35", link: "https://www.youtube.com/watch?v=xFr0FKnaLDk"),
        Video(title: "Steve Jobs' Commencement Address", author: "Stanford", duration: "15:04", link: "https://www.youtube.com/watch?v=UF8uR6Z6KLc"),
        Video(title: "Dream", author: "Mateusz M", duration: "6:19", link: "https://www.youtube.com/watch?v=g-jwWYX7Jlo&t=2s"),
        Video(title: "How Bad Do You Want It?", author: "Matt Howell", duration: "5:50", link: "https://www.youtube.com/watch?v=lsSC2vx7zFQ"),
        Video(title: "How to never fear again | Will Smith", author: "Word Porn", duration: "4:01", link: "https://www.youtube.com/watch?v=rfcqhxrnQQQ"),
        Video(title: "The Pyschology Of Winners", author: "Goal Achiever", duration: "7:16", link: "https://www.youtube.com/watch?v=L7DWWwdPDgk"),
        Video(title: "Here's why you're wasting your life away | Muhammad Ali", author: "Word Porn", duration: "2:51", link: "https://www.youtube.com/watch?v=-Ab3tQ_6P4E"),
        Video(title: "Tony Robbins: SELF DISCIPLINE", author: "Law of Attraction Coaching", duration: "6:28", link: "https://www.youtube.com/watch?v=BrzcwXvKMaA")
        ]
    
    var quotes = [
        Quote(quote: "Only I can change my life. No one can do it for me.", author: "Carol Burnett"),
        Quote(quote: "It always seems impossible until it's done.", author: "Nelson Mandela"),
        Quote(quote: "It does not matter how slow you go as long as you do not stop.", author: "Confucius"),
        Quote(quote: "If you can dream it, you can do it", author: "Walt Disney"),
        Quote(quote: "Innovation distinguishes between a leader and a follower.", author: "Steve Jobs"),
        Quote(quote: "Well done is better than well said.", author: "Benjamin Franklin"),
        Quote(quote: "Setting goals is the first step in turning the invisible into the visible.", author: "Tony Robins"),
        Quote(quote: "If you're going through hell, keep going.", author: "Winston Churchill"),
        Quote(quote: "Knowing is not enough; we must apply. Willing is not enough; we must do.", author: "Johann Wolfgang Von Goethe"),
        Quote(quote: "Shoot for the moon and if you miss you will still be among the stars.", author: "Les Brown")
    ]
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var quoteLabel: UILabel!

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
    // MARK: - View Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // let myVideoURL = URL(string: "https://www.youtube.com/watch?v=mgmVOuLgFB0")
       // videoPlayer.loadVideoURL(myVideoURL! as URL)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Methods
    
    var shuffleQuotes : [(quote: String,author: String)] = []
    
    func mixQuotes() {
        shuffleQuotes = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: quotes) as! [(String, String)]
        print(shuffleQuotes[0].quote)
        quoteLabel.text = shuffleQuotes[0].quote
        authorLabel.text = shuffleQuotes[0].author
    }
    
    // MARK: - IBActions
}
