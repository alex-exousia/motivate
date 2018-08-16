//
//  VisionViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 8/15/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit
import CountdownView

class VisionViewController: UIViewController {
    
    let zoomIn = CountdownView.Animation.zoomIn

    override func viewDidLoad() {
        super.viewDidLoad()
        
        diveInButton.layer.cornerRadius = 15
        diveInButton.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var diveInButton: UIButton!
    
    @IBAction func startTimerTapped(_ sender: Any) {
        
            CountdownView.shared.frameSize = CGSize(width: 200.0, height: 200.0)
        
            CountdownView.shared.dismissStyle = .byTapOnOutside
            CountdownView.shared.dismissStyleAnimation = .zoomOut
            CountdownView.shared.colorTransition = true
            CountdownView.shared.backgroundViewColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.85)

            CountdownView.show(countdownFrom: 60.0, spin: true, animation: zoomIn, autoHide: true, completion: nil)
    }
    
    
    
}
