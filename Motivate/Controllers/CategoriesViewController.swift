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
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Find Your Purpose", links: ["https://www.youtube.com/watch?v=2uFNfBGC72Q, https://www.youtube.com/watch?v=_LSmJIe4luY, https://www.youtube.com/watch?v=lRzIcOEewVg"])
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Happiness", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Peace Of Mind", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Be Confident", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Limits Don't Exist", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "No Plan B", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Dream Big", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Do More", links: [""]),
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), label: "Life Stories", links: [""])
    ]
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var categoriesTableview: UITableView!
    
    // MARK: - View Life Cycle Methods
    
        override func viewDidLoad() {
            super.viewDidLoad()
            categoriesTableview.delegate = self
            categoriesTableview.dataSource = self
//            categoriesTableview.backgroundColor = UIColor.white
            categoriesTableview.reloadData()
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
            cell.categoryImageView.image = video.image 
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 68
        }
        
      /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let identifier = segue.identifier else { return }
            
            switch identifier {
            case "openToVideos":
                guard let indexPath = categoriesTableview.indexPathForSelectedRow else { return }
                let video = categories[indexPath.row]
                let destination = segue.destination as! VideosInCategoriesViewController
                destination.video = video
                
            default:
                print("unexpected segue identifier")
            }
 
        } */
        
    }
