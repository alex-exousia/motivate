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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBirthdayButton.layer.cornerRadius = 10
        
        if birthDate == nil {
            dateLabel.text = "date of birth"
            ageDecimalLabel.text = "Your age represented in a new way"
        } else {
            dateLabel.text = UserDefaults.standard.string(forKey: "dateString")  ?? ""
            birthDate = UserDefaults.standard.object(forKey: "date") as? Date ?? Date()
            updateAge()
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateAge)), userInfo: nil, repeats: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBOutlet weak var ageDecimalLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var setBirthdayButton: UIButton!
    
    @objc func updateAge() {
        guard let date = birthDate else {return}
//        let calendar = NSCalendar.current

        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let difference = currentDate.timeIntervalSince1970 - date.timeIntervalSince1970
//        let difference = currentDate.timeIntervalSince(1950)
        let difference2 = difference / 3.154e+10
        let answer = difference2 * 1000
        
        ans = answer

    }
    
}
