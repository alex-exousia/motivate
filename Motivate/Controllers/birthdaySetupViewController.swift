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
    
    @IBAction func doneAction(_ sender: Any) {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd-MM-yyyy"

        
        let date = birthdayPicker.date
        let dateString = "\(dateFormat.string(from: date))"
        UserDefaults.standard.set(dateString, forKey: "dateString")
        UserDefaults.standard.set(date, forKey: "date")
        
        self.dismiss(animated: true) {
        }
    }
}
