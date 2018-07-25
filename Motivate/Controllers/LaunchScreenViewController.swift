//
//  LaunchScreenViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class LaunchScreenViewController: UIViewController {
    
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // generateAnswer()
    }
    
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
    
//    func generateAnswer() {
//        quoteLabel.quotes = quotes[0]
//        authorLabel.quotes = quotes[0]
//    }
    
}
