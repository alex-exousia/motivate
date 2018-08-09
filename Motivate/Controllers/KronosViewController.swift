//
//  KronosViewController.swift

//  Motivate
//
//  Created by Alexander Niehaus on 8/9/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class KronosViewController: UIViewController {
    
    var birthDate: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBirthdayButton.layer.cornerRadius = 10
        dateLabel.text = UserDefaults.standard.string(forKey: "date")  ?? ""
        ageDecimalLabel.text = "\(updateAge())"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func unwindBirthdayPicker(_ segue: UIStoryboardSegue) {
    }
    
    @IBOutlet weak var ageDecimalLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var setBirthdayButton: UIButton!
    
    func updateAge() -> Double {
        if birthDate == nil {
            return 0
        }
        let calendar = NSCalendar.current
        
        let currentDate = Date()
        let dateComparison = calendar.dateComponents([.day], from: birthDate!, to: currentDate)
        let answer = (Double(dateComparison.day!) / 365.0)
        
        return answer
    }
    
    // Replace the hour (time) of both dates with 00:00
    
    
}
