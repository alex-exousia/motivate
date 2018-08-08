
//
//  SettingViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var settingsTableView: UITableView!
    
    // MARK: - View Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.portrait)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        AppUtility.lockOrientation(.portrait)
        
//        settingsTableView.delegate = self
//        settingsTableView.dataSource = self
        
//        activateBlur()
        
    }
    // MARK: - Methods
//    func activateBlur() {
//    let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.dark)
//    let blurView = UIVisualEffectView(effect: darkBlur)
//    view.frame = view.bounds
//    view.addSubview(blurView)
//    }
}

//extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//
//    func settingsTableView(tableView: UITableView,
//                           didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        if indexPath.row == 1 {
//            print("fnejwbfkbewubferi")
//        }
//}
//}













