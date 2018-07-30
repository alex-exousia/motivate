//
//  VideosInCategoriesViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/28/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class VideosInCategoriesViewController: UIViewController {
    // MARK: - Properties
    
 /*     var videosInCategories = [
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>),
        VideosInCategories(image: UIImageView(image: #imageLiteral(resourceName: "temporaryBlack")), title: <#String#>, author: <#String#>, duration: <#String#>, links: <#[String]#>)
    ] */
 
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameOfCategoryInVideosLabel: UILabel!
    
    @IBOutlet weak var videosInCategoryTableView: UITableView!
    
    // MARK: - View Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //            videosInCategoryTableView.delegate = self
        //            videosInCategoryTableView.dataSource = self
        self.navigationController?.isNavigationBarHidden = false

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Methods
    
    // MARK: - IBActions
 /*   extension VideosInCategoriesViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return categories.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "videosInCategoriesTableViewCell", for: indexPath) as! VideosInCategoriesTableViewController
            let video = videosInCategories[indexPath.row]
    
            cell.titleLabel.text = video.title
            cell.auhtorLabel.text = video.author
            cell.durationLabel.text = video.duration
            cell.videoPreviewImageView.UIImageView = video.image
    
    
            return cell
        }*/
}

