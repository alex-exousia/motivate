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
        
        
        self.performSegue(withIdentifier: "unwindToKronos", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? KronosViewController else { return }
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd-MM-yyyy"
        
        
        let date = birthdayPicker.date
        let dateString = "\(dateFormat.string(from: date))"
        UserDefaults.standard.set(dateString, forKey: "date")
        
        destination.birthDate = date
    }
}
