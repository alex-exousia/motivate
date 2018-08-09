//
//  birthdaySetupViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 8/9/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class birthdaySetupViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdayPopUpView.layer.cornerRadius = 15
        birthdayPopUpView.layer.masksToBounds = true
        birthdayPicker.setValue(UIColor.white, forKeyPath: "textColor")

    }
    @IBOutlet weak var birthdayPopUpView: UIView!
    
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    @IBAction func unwindBirthdayPicker(_ segue: UIStoryboardSegue) {
    }
    
}
