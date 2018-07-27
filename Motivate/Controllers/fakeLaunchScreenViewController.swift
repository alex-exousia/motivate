//
//  fakeLaunchScreenViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/26/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import GameplayKit
import UIKit

class fakeLaunchScreenViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixQuotes()
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(3500)) {
//            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let initialVC = mainStoryboard.instantiateInitialViewController()
//            self.view.window?.rootViewController = initialVC
//            self.view.window?.makeKeyAndVisible()
            self.showMain()
        }
    }
    
    func showMain() {
        performSegue(withIdentifier: "seguetoMainTabBarController", sender: self)
    }
    
    /*
     segue to main tab bar controller after 10 seconds
     
     let timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(segueToMainTabBar), userInfo: nil, repeats: false)
     
     @objc func segueToMainTabBar() {
     self.performSegue(withIdentifier: "mainTabBarController", sender: self)
     }
     */
    
    var quotes = [
        (quote: "Only I can change my life. No one can do it for me", author: "Carol Burnett"),
        (quote: "It always seems impossible until it's done", author: "Nelson Mandela"),
        (quote: "It does not matter how slow you go as long as you do not stop", author: "Confucius"),
        (quote: "If you can dream it, you can do it", author: "Walt Disney"),
        (quote: "Innovation distinguishes between a leader and a follower", author: "Steve Jobs"),
        (quote: "Well done is better than well said", author: "Benjamin Franklin"),
        (quote: "Setting goals is the first step in turning the invisible into the visible", author: "Tony Robins"),
        (quote: "If you're going through hell, keep going", author: "Winston Churchill"),
        (quote: "Knowing is not enough; we must apply. Willing is not enough; we must do", author: "Johann Wolfgang Von Goethe"),
        (quote: "Shoot for the moon and if you miss you will still be among the stars", author: "Les Brown")
    ]
    var shuffleQuotes : [(quote: String,author: String)] = []
    
    func mixQuotes() {
        shuffleQuotes = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: quotes) as! [(String, String)]
        print(shuffleQuotes[0].quote)
        quoteLabel.text = shuffleQuotes[0].quote
        authorLabel.text = shuffleQuotes[0].author
    }
    
}
