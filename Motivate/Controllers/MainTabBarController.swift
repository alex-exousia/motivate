//
//  MainTabBarController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//
import Foundation
import UIKit
import GameplayKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let homeStoryboard = UIStoryboard(name: "Home", bundle: .main)
        let homeVC = homeStoryboard.instantiateInitialViewController()
        let tabOneBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "TabBar_Home"), tag: 0)
        homeVC?.tabBarItem = tabOneBarItem
        
        
        let categoryStoryboard = UIStoryboard(name: "Categories", bundle: .main)
        let categoryVC = categoryStoryboard.instantiateInitialViewController()
        let tabTwoBarItem = UITabBarItem(title: "Categories", image: #imageLiteral(resourceName: "TabBar_Discover"), tag: 1)
        categoryVC?.tabBarItem = tabTwoBarItem
        
        let settingsStoryboard = UIStoryboard(name: "Settings", bundle: .main)
        let settingsVC = settingsStoryboard.instantiateInitialViewController()
        let tabThreeBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "TabBar_Settings"), tag: 2) // Add the selected image to the init
        settingsVC?.tabBarItem = tabThreeBarItem
        
        self.viewControllers = [homeVC!, categoryVC!, settingsVC!]
    }
    
        
}

