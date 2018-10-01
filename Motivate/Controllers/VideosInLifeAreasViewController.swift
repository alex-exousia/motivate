//
//  VideosInLifeAreasViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/28/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class VideosInLifeAreasViewController: UIViewController {
    // MARK: - Properties
    
    var videosInCategories = [VideosInCategories]()
    var categoryTitle: String!
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameOfCategoryInVideosLabel: UILabel!
    
    @IBOutlet weak var videosInCategoryTableView: UITableView!
    
    // MARK: - View Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videosInCategoryTableView.delegate = self
        videosInCategoryTableView.dataSource = self
        self.navigationController?.isNavigationBarHidden = false
        nameOfCategoryInVideosLabel.text = categoryTitle
        AppUtility.lockOrientation(.portrait)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppUtility.lockOrientation(.portrait)
    }
    
    // MARK: - Methods
    // MARK: - IBActions
    

}
    

extension VideosInLifeAreasViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return videosInCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "videosInCategoriesTableViewCell", for: indexPath) as! VideosInCategoriesTableViewCell
            cell.link = self
            let video = videosInCategories[indexPath.row]
    
            cell.titleLabel.text = video.title
            cell.authorLabel.text = video.author
            cell.durationLabel.text = video.duration
            cell.videoPreviewImageView.image = video.image
            
            return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "openVideo", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "openVideo":
            
            guard let indexPath = videosInCategoryTableView.indexPathForSelectedRow else { return }
            let video = videosInCategories[indexPath.row]
            
            let destination = segue.destination as! ShowvideoViewController
            destination.video = video
            
        default:
            print("unexpected segue identifier")
        }
        
    }
    
}

