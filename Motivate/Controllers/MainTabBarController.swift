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
    
        let categoryStoryboard = UIStoryboard(name: "Categories", bundle: .main)
        let categoryVC = categoryStoryboard.instantiateInitialViewController()
        let tabTwoBarItem = UITabBarItem(title: "Life Areas", image: #imageLiteral(resourceName: "TabBar_Discover"), tag: 1)
        categoryVC?.tabBarItem = tabTwoBarItem
        
        let settingsStoryboard = UIStoryboard(name: "Settings", bundle: .main)
        let settingsVC = settingsStoryboard.instantiateInitialViewController()
        let tabThreeBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "TabBar_Settings"), tag: 2) 
        settingsVC?.tabBarItem = tabThreeBarItem
        
        let kronosStoryboard = UIStoryboard(name: "Kronos", bundle: .main)
        let kronosVC = kronosStoryboard.instantiateInitialViewController()
        let tabFourBarItem = UITabBarItem(title: "Kronos", image: #imageLiteral(resourceName: "stopwatch"), tag: 3)
        kronosVC?.tabBarItem = tabFourBarItem
        
        let visionStoryboard = UIStoryboard(name: "Vision", bundle: .main)
        let visionVC = visionStoryboard.instantiateInitialViewController()
        let tabfiveItem = UITabBarItem(title: "Vision", image: #imageLiteral(resourceName: "mind"), tag: 4)
        visionVC?.tabBarItem = tabfiveItem
        
        self.viewControllers = [visionVC!, categoryVC!, kronosVC!, settingsVC!]
    }
    
        
}

