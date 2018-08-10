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
    var ans: Double = 0 {
        didSet {
            self.ageDecimalLabel.text = "\(ans)"
        }
    }
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateAge)), userInfo: nil, repeats: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBirthdayButton.layer.cornerRadius = 10
        dateLabel.text = UserDefaults.standard.string(forKey: "dateString")  ?? ""
        birthDate = UserDefaults.standard.object(forKey: "date") as? Date ?? Date()

        updateAge()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBOutlet weak var ageDecimalLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var setBirthdayButton: UIButton!
    
    @objc func updateAge() {
        guard let date = birthDate else {return}
        let calendar = NSCalendar.current

        let currentDate = Date()
        let dateComparison = calendar.dateComponents([.day], from: date, to: currentDate)
        let answer = (Double(dateComparison.day!) / 365.0)
        
        ans = answer
    }
    
}
