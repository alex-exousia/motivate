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
    var ans: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBirthdayButton.layer.cornerRadius = 10
        dateLabel.text = UserDefaults.standard.string(forKey: "date")  ?? ""
        if ans == 0 {
            updateAge()
            ageDecimalLabel.text = "\(ans)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func unwindBirthdayPicker(_ segue: UIStoryboardSegue) {
    }
    
    @IBOutlet weak var ageDecimalLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var setBirthdayButton: UIButton!
    
    func updateAge() {
        guard let date = birthDate else {return}
        let calendar = NSCalendar.current
        
        let currentDate = Date()
        let dateComparison = calendar.dateComponents([.day], from: date, to: currentDate)
        let answer = (Double(dateComparison.day!) / 365.0)
        
        ans = answer
    }
    
    // Replace the hour (time) of both dates with 00:00
    
    
}
