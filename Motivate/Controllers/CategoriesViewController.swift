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
    var categories : [Categories] = [
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Find Your Purpose", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Meaning - Jim Carrey", author: "Absolute Motivation", duration: "4:16", link: "https://www.youtube.com/watch?v=Z0ZrkBCnfxw"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Purpose", author: "Chispa Motivation", duration: "4:04", link: "https://www.youtube.com/watch?v=_LSmJIe4luY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Purpose", author: "RedFrost Motivatinon", duration: "6:19", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Find Purpose In Your Life", author: "Goalcast", duration: "7:51", link: "https://www.youtube.com/watch?v=58HPpS514Bc"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Purpose", author: "Chispa Motivation", duration: "4:33", link: "https://www.youtube.com/watch?v=lRzIcOEewVg"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Actually Find Your Purpose", author: "Goalcast", duration: "7:51", link: "https://www.youtube.com/watch?v=58HPpS514Bc"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "What Do You Desire?", author: "Chispa Motivation", duration: "1:51", link: "https://www.youtube.com/watch?v=Nb7EaaF51eY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Find Your True Passion and Purpose", author: "Habits of The Wealthy", duration: "8:00", link: "https://www.youtube.com/watch?v=6ACLuqeNe10"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "What's The Meaning Of Life", author: "MotivationGrid", duration: "7:22", link: "https://www.youtube.com/watch?v=kuR5OhK5B_U"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "3 Truths To Wake You Up", author: "Goalcast", duration: "4:35", link: "https://www.youtube.com/watch?v=ecvS9ArwykA")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Happiness", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Peace Of Mind", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Be Confident", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Limits Don't Exist", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "No Plan B", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Dream Big", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Do More", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Life Stories", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")])       ]
    
    var lastRowSelected : Int?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var categoriesTableview: UITableView!
    
    // MARK: - View Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesTableview.delegate = self
        categoriesTableview.dataSource = self
        categoriesTableview.reloadData()
        AppUtility.lockOrientation(.portrait)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppUtility.lockOrientation(.portrait)

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
        let category = categories[indexPath.row]
        
        cell.categoryLabel.text = category.name
        cell.categoryImageView.image = category.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                lastRowSelected = indexPath.row
        self.performSegue(withIdentifier: "openToVideos", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "openToVideos":
            
            guard let indexPath = categoriesTableview.indexPathForSelectedRow else { return }
            let videosInCategories = categories[indexPath.row].videos
            
            let destination = segue.destination as! VideosInCategoriesViewController
            destination.videosInCategories = videosInCategories
            destination.categoryTitle = categories[lastRowSelected!].name
            
        default:
            print("unexpected segue identifier")
        }
        
    }
    
}
