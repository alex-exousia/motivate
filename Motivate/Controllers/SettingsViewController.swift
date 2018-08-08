
//
//  SettingViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class SettingsTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    let link = ["MindUP link"]
    
    // MARK: - IBOutlets
    
    // MARK: - View Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.portrait)
        
        //make segue FASTER -:1
        
//        DispatchQueue.main.async {
//            self.performSegue(withIdentifier: "app store link",sender: self)
//        }

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
    
    @IBAction func unwindRateApp(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func unwindReportWebsite(_ segue: UIStoryboardSegue) {
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 && indexPath.section == 0 {
            let email = "app.mindup@gmail.com"
            if let url = URL(string: "mailto:\(email)") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
        if indexPath.row == 2 {
            let activityController = UIActivityViewController(activityItems: link, applicationActivities: nil)
            present(activityController, animated: true, completion: nil)
        }
    }
}











