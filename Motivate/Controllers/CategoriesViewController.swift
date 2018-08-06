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
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Meaning", author: "Absolute Motivation", duration: "4:16", link: "https://www.youtube.com/watch?v=Z0ZrkBCnfxw"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Purpose", author: "Chispa Motivation", duration: "4:04", link: "https://www.youtube.com/watch?v=_LSmJIe4luY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Purpose", author: "RedFrost Motivatinon", duration: "6:19", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Find Purpose In Your Life", author: "Goalcast", duration: "7:51", link: "https://www.youtube.com/watch?v=58HPpS514Bc"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Find Your Why", author: "HESMotivation", duration: "14:22", link: "https://www.youtube.com/watch?v=YnBs6YGPAu4"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Actually Find Your Purpose", author: "Goalcast", duration: "7:51", link: "https://www.youtube.com/watch?v=58HPpS514Bc"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "What Do You Desire?", author: "Chispa Motivation", duration: "1:51", link: "https://www.youtube.com/watch?v=Nb7EaaF51eY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Find Your True Passion and Purpose", author: "Habits of The Wealthy", duration: "8:00", link: "https://www.youtube.com/watch?v=6ACLuqeNe10"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "What's The Meaning Of Life", author: "MotivationGrid", duration: "7:22", link: "https://www.youtube.com/watch?v=kuR5OhK5B_U"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "3 Truths To Wake You Up", author: "Goalcast", duration: "4:35", link: "https://www.youtube.com/watch?v=ecvS9ArwykA")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Happiness", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "This Is Why Your're Not Happy", author: "Absolute Motivation", duration: "9:29", link: "https://www.youtube.com/watch?v=p0p1fjLPjYQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How to Stop Comparing Yourself to Others", author: "Infinite Water (Diving Deep)", duration: "11:08", link: "https://www.youtube.com/watch?v=y-3rFZqOOaw"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "What It All Means", author: "Absolute Motivation", duration: "5:44", link: "https://www.youtube.com/watch?v=wTblbYqQQag"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Money Doesn't Buy Pleasure", author: "Chispa Motivation", duration: "3:37", link: "https://www.youtube.com/watch?v=pwuuAPsE9UQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Being Fulfilled", author: "Absolute Motivation", duration: "3:50", link: "https://www.youtube.com/watch?v=TFeCuTiitmU"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Why You Never Truly Loved", author: "Word Porn", duration: "4:50", link: "https://www.youtube.com/watch?v=Yiv9ay1TLPM"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Self Love", author: "HESMotivation", duration: "7:11", link: "https://www.youtube.com/watch?v=xImqF2-oaf8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How to NEVER Be Unhappy Again", author: "Word Porn", duration: "2:47", link: "https://www.youtube.com/watch?v=p5zn6pgmlTE"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Live A Happy Life", author: "Habits Of The Wealthy", duration: "6:44", link: "https://www.youtube.com/watch?v=4hfUgPVqBks"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Power Of Thought", author: "RedFrost Motivation", duration: "5:27", link: "https://www.youtube.com/watch?v=zZ4NjopCA00")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Peace Of Mind", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How I Found True Inner Peace While Facing Death Row", author: "Goalcast", duration: "5:17", link: "https://www.youtube.com/watch?v=AeyKRl60szQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The 5-Letter Secret to a Worry-Free Life", author: "Goalcast", duration: "2:08", link: "https://www.youtube.com/watch?v=cyaFMYWA0Qk"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "It's a Great Day To Be Alive", author: "Goalcast", duration: "9:56", link: "https://www.youtube.com/watch?v=mRR_hNtFJeE"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "This Monk Will Change Your Worldview", author: "Absolute Motivation", duration: "16:03", link: "https://www.youtube.com/watch?v=5hfzEAEMEyY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Let Go Of Your Past", author: "MotivationGrid", duration: "3:46", link: "https://www.youtube.com/watch?v=CSJTbmFgPV8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Let Life Unfold Itself To You", author: "Habits of The Wealthy", duration: "13:14", link: "https://www.youtube.com/watch?v=JBnVpmawVdI"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Focusing On What You Want", author: "Habits of The Wealthy", duration: "11:40", link: "https://www.youtube.com/watch?v=4FYjj9aa75c"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Get Over Your Past", author: "HESMotivation", duration: "5:29", link: "https://www.youtube.com/watch?v=DqHHLFktQIk"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Always Do The Right Thing", author: "Word Porn", duration: "3:31", link: "https://www.youtube.com/watch?v=Ny_oZca0CcQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How To Never Stress Again", author: "Word Porn", duration: "1:43", link: "https://www.youtube.com/watch?v=qJq8IovXFYQ")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Be Confident", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Be Prepared For Rejection", author: "Absolute Motivation", duration: "15:44", link: "https://www.youtube.com/watch?v=vwBJfxx85YU"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Hero In You", author: "Absolute Motivation", duration: "6:42", link: "https://www.youtube.com/watch?v=ztChrYW_25w"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Trust Yourself", author: "Chispa Motivation", duration: "4:35", link: "https://www.youtube.com/watch?v=XUOWcwNXFeU"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Power Of You", author: "Chispa Motivation", duration: "5:14", link: "https://www.youtube.com/watch?v=ocrjltwc_Fs"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How to Conquer Your Mind And Embrace The Suck", author: "Goalcast", duration: "10:32", link: "https://www.youtube.com/watch?v=_J_bOqPhuZA"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How I Became A Billionaire By Being Rejected", author: "Word Porn", duration: "2:00", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "They Doubted Me - This Is What I Did", author: "Word Porn", duration: "1:37", link: "https://www.youtube.com/watch?v=TlTAqToxRLg"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Self Confidence", author: "HESMotivation", duration: "11:26", link: "https://www.youtube.com/watch?v=1bJz9yzmKXs"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Believe In Yourself", author: "HESMotivation", duration: "11:47", link: "https://www.youtube.com/watch?v=QPLPnlWhkA4"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How to Change the Way You See Yourself", author: "Goalcast", duration: "8:07", link: "https://www.youtube.com/watch?v=1IH0digwjds&t=182s")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Limits Don't Exist", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Remember What You Are", author: "MulliganBrothers", duration: "4:02", link: "https://www.youtube.com/watch?v=flBd7yQ-bv8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Muhammad Ali", author: "MulliganBrothers", duration: "3:54", link: "https://www.youtube.com/watch?v=Y2eKdCmKgcM"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Resilienzy", author: "Matuesz M", duration: "2:09", link: "https://www.youtube.com/watch?v=UNQhuFL6CWg"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Gym Motivation", author: "MulliganBrothers", duration: "10:01", link: "https://www.youtube.com/watch?v=xoXYe9e01_Y"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Greatest", author: "Mateusz M", duration: "3:46", link: "https://www.youtube.com/watch?v=V2EfL1j4KYE"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "The Process", author: "Chispa Motivation", duration: "3:54", link: "https://www.youtube.com/watch?v=350F0VsECvo"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Contenders", author: "Mateusz M", duration: "3:17", link: "https://www.youtube.com/watch?v=YDSwwEeF_K8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Obsession", author: "Chispa Motivation", duration: "6:00", link: "https://www.youtube.com/watch?v=APOKZLzKnFw"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Effort", author: "HESMotivation", duration: "10:39", link: "https://www.youtube.com/watch?v=67fB-mqtXbY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Be A Champion", author: "HESMotivation", duration: "10:19", link: "https://www.youtube.com/watch?v=TjskLAh1SO8")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "No Plan B", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "5 Rules For Success In Life", author: "HESMotivation", duration: "11:11", link: "https://www.youtube.com/watch?v=f3uaq6Bm8hQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Plan B Sucks", author: "MulliganBrothers", duration: "2:40", link: "https://www.youtube.com/watch?v=4cfbvM-TFjY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Decide", author: "MulliganBrothers", duration: "3:29", link: "https://www.youtube.com/watch?v=WldsRzmu4zs"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "If You Want To Change The World", author: "Goalcast", duration: "6:01", link: "https://www.youtube.com/watch?v=3sK3wJAxGfs"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Why It Pays To Be Hungry", author: "Goalcast", duration: "6:36", link: "https://www.youtube.com/watch?v=xFr0FKnaLDk&t=146s"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Why You Should Pratice Being Stupid", author: "Goalcast", duration: "2:13", link: "https://www.youtube.com/watch?v=d9-kSa55JVE"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "You Can Also Be Great", author: "MulliganBrothers", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Business", author: "MulliganBrothers", duration: "3:08", link: "https://www.youtube.com/watch?v=oLWScthpAgY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Push Yourself Today", author: "Habits Of The Wealthy", duration: "12:20", link: "https://www.youtube.com/watch?v=ULHMQ4ENIyk"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "How Bad Do You Want It?", author: "Chispa Motivation", duration: "3:41", link: "https://www.youtube.com/watch?v=PX1vUSuFhrA")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Dream Big", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Focus On One Thing", author: "Habits of the Wealthy", duration: "15:47", link: "https://www.youtube.com/watch?v=4cfbvM-TFjY"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Fears and Dreams", author: "MulliganBrothers", duration: "15:12", link: "https://www.youtube.com/watch?v=9qLx-oy6Zlc"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Get Angry & Get To Work", author: "MulliganBrothers", duration: "13:55", link: "https://www.youtube.com/watch?v=BWW-5Q_EzKM"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Don't Be Afraid To Fail Big", author: "Goalcast", duration: "4:31", link: "https://www.youtube.com/watch?v=tlY0PkWxCW8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Dream", author: "Chispa Motivation", duration: "6:19", link: "https://www.youtube.com/watch?v=nsNrZvfCnHg"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "It's Possible", author: "Chispa Motivation", duration: "4:07", link: "https://www.youtube.com/watch?v=dJ7LPbAoVSs"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Move Forward Each Day By 1%", author: "Absolute Motivation", duration: "9:48", link: "https://www.youtube.com/watch?v=StTQzAE3orI"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Leave Your Mark On The World", author: "Absolute Motivation", duration: "5:35", link: "https://www.youtube.com/watch?v=SSijcZjWMng"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Fall Foward", author: "Absolute Motivation", duration: "5:11", link: "https://www.youtube.com/watch?v=6cgxSL926N8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Ambition", author: "Absolute Motivation", duration: "11:26", link: "https://www.youtube.com/watch?v=tP7cpSVy92Y")]),
        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "Do More", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Millennials and Procrastination", author: "MulliganBrothers", duration: "15:48", link: "https://www.youtube.com/watch?v=nShlloNgM2E"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Future Generations", author: "Be Inspired", duration: "18:39", link: "https://www.youtube.com/watch?v=As8XkJNaHbs"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Retrain Your Mind", author: "Be Inspired", duration: "10:34", link: "https://www.youtube.com/watch?v=xp2qjshr-r4&t=44s"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Invest In Yourself", author: "Be Inspired", duration: "4:02", link: "https://www.youtube.com/watch?v=Eu_dUxTg33I"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Do More", author: "Casey Neistat", duration: "3:45", link: "https://www.youtube.com/watch?v=ZwYy4scOJi8"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Stop Wasting Time", author: "Motivation2Study", duration: "15:20", link: "https://www.youtube.com/watch?v=wsNzAuYDgy0"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Study Motivation", author: "ProjectElon", duration: "10:15", link: "https://www.youtube.com/watch?v=gNMxpi3-RLk"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Push Yourself", author: "Motivation2Study", duration: "5:40", link: "https://www.youtube.com/watch?v=d9gwmyPMByM"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Never Give Up", author: "Ben Lionel Scott", duration: "5:01", link: "https://www.youtube.com/watch?v=PjP9r-HU4fk"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "Deserve More", author: "Ben Lionel Scott", duration: "4:36", link: "https://www.youtube.com/watch?v=U3Iohi17MeU")])]
//        Categories(image: #imageLiteral(resourceName: "temporaryBlack"), name: "", videos: [
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
//            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"),title: "NOB", author: "bOB", duration: "3:54", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q")])       ]
    
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
