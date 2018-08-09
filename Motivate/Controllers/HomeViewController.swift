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
    
    var playingVideo: YouTubePlayerView?
    
    var shuffleQuotes : [(quote: String,author: String)] = []
    
    var videos = [
        Video(title: "Vision", author: "Mateusz M", duration: "11:03", link: "https://www.youtube.com/watch?v=ZOy0YgUDwDg"),
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
        (quote: "Only I can change my life. No one can do it for me.", author: "Carol Burnett"),
        (quote: "It always seems impossible until it's done.", author: "Nelson Mandela"),
        (quote: "It does not matter how slow you go as long as you do not stop.", author: "Confucius"),
        (quote: "If you can dream it, you can do it", author: "Walt Disney"),
        (quote: "Innovation distinguishes between a leader and a follower.", author: "Steve Jobs"),
        (quote: "Well done is better than well said.", author: "Benjamin Franklin"),
        (quote: "Setting goals is the first step in turning the invisible into the visible.", author: "Tony Robins"),
        (quote: "If you're going through hell, keep going.", author: "Winston Churchill"),
        (quote: "Knowing is not enough; we must apply. Willing is not enough; we must do.", author: "Johann Wolfgang Von Goethe"),
        (quote: "Shoot for the moon and if you miss you will still be among the stars.", author: "Les Brown")
    ]
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var quoteLabel: UILabel!

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
    // MARK: - View Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixQuotes()
        homeTableView.delegate = self
        homeTableView.dataSource = self
        AppUtility.lockOrientation(.portrait)
        
        NotificationCenter.default.addObserver(self, selector: #selector(HomeViewController.playInBackground), name: NSNotification.Name.UIApplicationDidEnterBackground, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        AppUtility.lockOrientation(.portrait)
    }
    
    // MARK: - Methods
    
    @objc func playInBackground(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(250)) {
            self.playingVideo?.play()
        }
    }
    
    func mixQuotes() {
        shuffleQuotes = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: quotes) as! [(String, String)]
        quoteLabel.text = shuffleQuotes[0].quote
        authorLabel.text = shuffleQuotes[0].author
    }
    
    // MARK: - IBActions
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeVideoTableViewCell", for: indexPath) as! HomeVideoTableViewCell
        let video = videos[indexPath.row]

//        cell.titleLabel.text = video.title
//        cell.authorLabel.text = video.author
        cell.videoLengthLabel.text = video.duration
        let url = URL(string: video.link)!
//        cell.videoPlayer.delegate = self
        cell.videoPlayer.loadVideoURL(url)
        cell.videoPlayer.clear()
        
        return cell
    }
        
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 215
    }
    
}











