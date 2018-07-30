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
    
    var categories = [
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Find Your Purpose"),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Happiness"),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Peace of Mind"),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Be Confident"),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Limits Don't Exist"),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Dream Big"),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Life Stories")
    ]
    // MARK: - IBOutlets
    
    @IBOutlet weak var categoriesTableview: UITableView!
    
    // MARK: - View Life Cycle Methods
    
        override func viewDidLoad() {
            super.viewDidLoad()
            categoriesTableview.delegate = self
            categoriesTableview.dataSource = self
        }
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
        }
    
    // MARK: - Methods
    
    // MARK: - IBActions
    
}
    extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return categories.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "categoriesTableViewCell", for: indexPath) as! CategoriesTableViewCell
            let video = categories[indexPath.row]
    
            cell.categoryLabel.text = video.label
            //cell.categoryImageView.UIImageView = video.image
            return cell
        }
    }
