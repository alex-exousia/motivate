//
//  CategoriesViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import YouTubePlayer
import UIKit

class CategoriesViewController: UIViewController {
    // MARK: - Properties
    
    let MinHeight: CGFloat = 68
    
    var categories = [
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Find Your Purpose"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Happiness"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Peace Of Mind"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Be Confident"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Limits Don't Exist"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "No Plan B"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Dream Big"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Do More"),
        Categories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), label: "Life Stories")
    ]
    // MARK: - IBOutlets
    
    @IBOutlet weak var categoriesTableview: UITableView!
    
    // MARK: - View Life Cycle Methods
    
        override func viewDidLoad() {
            super.viewDidLoad()
            categoriesTableview.delegate = self
            categoriesTableview.dataSource = self
            categoriesTableview.backgroundColor = UIColor.white
            print("view did load")
            categoriesTableview.reloadData()
            print("reloaded")
        }
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("view did appear")
        }
    
    // MARK: - Methods
    
    // MARK: - IBActions
    
}
    extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return categories.count
            return 9
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "categoriesTableViewCell", for: indexPath) as! CategoriesTableViewCell
            let video = categories[indexPath.row]
            cell.categoryLabel.text = video.label
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            let tHeight = tableView.bounds.height
            
            let temp = tHeight/CGFloat(categories.count)
            
            return temp > MinHeight ? temp : MinHeight
        }
        
    }
