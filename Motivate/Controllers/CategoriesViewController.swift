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
        Categories(image: #imageLiteral(resourceName: "find your purpose"), name: "Find Your Purpose", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "PURPOSE-1") ,title: "Purpose (Discover Your WHY)", author: "beats Reloaded", duration: "4:02", link: "https://www.youtube.com/watch?v=_yBwzuVI6sA"),
            VideosInCategories(image: #imageLiteral(resourceName: "steve"), title: "Steve Jobs' Commencement Address", author: "Stanford", duration: "15:04", link: "https://www.youtube.com/watch?v=UF8uR6Z6KLc"),
            VideosInCategories(image: #imageLiteral(resourceName: "the purpose"),title: "The Purpose", author: "Chispa Motivation", duration: "4:04", link: "https://www.youtube.com/watch?v=_LSmJIe4luY"),
            VideosInCategories(image: #imageLiteral(resourceName: "Purpose"),title: "Purpose", author: "RedFrost Motivatinon", duration: "6:19", link: "https://www.youtube.com/watch?v=2uFNfBGC72Q"),
            VideosInCategories(image: #imageLiteral(resourceName: "find purpose"),title: "How To Find Purpose In Your Life", author: "Goalcast", duration: "7:51", link: "https://www.youtube.com/watch?v=58HPpS514Bc"),
            VideosInCategories(image: #imageLiteral(resourceName: "find your why"),title: "How To Find Your Why", author: "HESMotivation", duration: "14:22", link: "https://www.youtube.com/watch?v=YnBs6YGPAu4"),
            VideosInCategories(image: #imageLiteral(resourceName: "wasting life"),title: "Here's why you're wasting your life away | Muhammad Ali", author: "Word Porn", duration: "2:51", link: "https://www.youtube.com/watch?v=-Ab3tQ_6P4E"),
            VideosInCategories(image: #imageLiteral(resourceName: "actually find your purpose"),title: "How To Actually Find Your Purpose", author: "Goalcast", duration: "4:20", link: "https://www.youtube.com/watch?v=WO1onAijq88"),
            VideosInCategories(image: #imageLiteral(resourceName: "desire"),title: "What Do You Desire?", author: "Chispa Motivation", duration: "1:51", link: "https://www.youtube.com/watch?v=Nb7EaaF51eY"),
            VideosInCategories(image: #imageLiteral(resourceName: "passion"),title: "Find Your True Passion and Purpose", author: "Habits of The Wealthy", duration: "8:00", link: "https://www.youtube.com/watch?v=6ACLuqeNe10"),
            VideosInCategories(image: #imageLiteral(resourceName: "meaning of life"),title: "What's The Meaning Of Life", author: "MotivationGrid", duration: "7:22", link: "https://www.youtube.com/watch?v=kuR5OhK5B_U"),
            VideosInCategories(image: #imageLiteral(resourceName: "3 truths"),title: "3 Truths To Wake You Up", author: "Goalcast", duration: "4:35", link: "https://www.youtube.com/watch?v=ecvS9ArwykA")]),
        Categories(image: #imageLiteral(resourceName: "happy-man"), name: "Happiness", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "not happy"),title: "This Is Why Your're Not Happy", author: "Absolute Motivation", duration: "9:29", link: "https://www.youtube.com/watch?v=p0p1fjLPjYQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "stop comparing"),title: "How to Stop Comparing Yourself to Others", author: "Infinite Water (Diving Deep)", duration: "11:08", link: "https://www.youtube.com/watch?v=y-3rFZqOOaw"),
            VideosInCategories(image: #imageLiteral(resourceName: "what it all means"),title: "What It All Means", author: "Absolute Motivation", duration: "5:44", link: "https://www.youtube.com/watch?v=wTblbYqQQag"),
            VideosInCategories(image:  #imageLiteral(resourceName: "money doesn't"),title: "Money Doesn't Buy Pleasure", author: "Chispa Motivation", duration: "3:37", link: "https://www.youtube.com/watch?v=pwuuAPsE9UQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "being fulfilled"),title: "Being Fulfilled", author: "Absolute Motivation", duration: "3:50", link: "https://www.youtube.com/watch?v=TFeCuTiitmU"),
            VideosInCategories(image: #imageLiteral(resourceName: "self love"),title: "Self Love", author: "HESMotivation", duration: "7:11", link: "https://www.youtube.com/watch?v=xImqF2-oaf8"),
            VideosInCategories(image: #imageLiteral(resourceName: "never unhappy again"),title: "How to NEVER Be Unhappy Again", author: "Word Porn", duration: "2:47", link: "https://www.youtube.com/watch?v=p5zn6pgmlTE"),
            VideosInCategories(image: #imageLiteral(resourceName: "live happy"),title: "How To Live A Happy Life", author: "Habits Of The Wealthy", duration: "6:44", link: "https://www.youtube.com/watch?v=4hfUgPVqBks"),
            VideosInCategories(image: #imageLiteral(resourceName: "power of thought"),title: "The Power Of Thought", author: "RedFrost Motivation", duration: "5:27", link: "https://www.youtube.com/watch?v=zZ4NjopCA00")]),
        Categories(image: #imageLiteral(resourceName: "peace(1)"), name: "Peace Of Mind", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "inner peace"),title: "How I Found True Inner Peace", author: "Goalcast", duration: "5:17", link: "https://www.youtube.com/watch?v=AeyKRl60szQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "letter word"),title: "The 5-Letter Secret to a Worry-Free Life", author: "Goalcast", duration: "2:08", link: "https://www.youtube.com/watch?v=cyaFMYWA0Qk"),
            VideosInCategories(image: #imageLiteral(resourceName: "great day "),title: "It's a Great Day To Be Alive", author: "Goalcast", duration: "9:56", link: "https://www.youtube.com/watch?v=mRR_hNtFJeE"),
            VideosInCategories(image: #imageLiteral(resourceName: "dream"), title: "Dream", author: "Mateusz M", duration: "6:19", link: "https://www.youtube.com/watch?v=g-jwWYX7Jlo&t=2s"),
            VideosInCategories(image: #imageLiteral(resourceName: "this monk"),title: "This Monk Will Change Your Worldview", author: "Absolute Motivation", duration: "16:03", link: "https://www.youtube.com/watch?v=5hfzEAEMEyY"),
            VideosInCategories(image: #imageLiteral(resourceName: "let go"),title: "Let Go Of Your Past", author: "MotivationGrid", duration: "3:46", link: "https://www.youtube.com/watch?v=CSJTbmFgPV8"),
            VideosInCategories(image: #imageLiteral(resourceName: "let life unfold"),title: "Let Life Unfold Itself To You", author: "Habits of The Wealthy", duration: "13:14", link: "https://www.youtube.com/watch?v=JBnVpmawVdI"),
            VideosInCategories(image: #imageLiteral(resourceName: "never fear again"), title: "How to never fear again | Will Smith", author: "Word Porn", duration: "4:01", link: "https://www.youtube.com/watch?v=rfcqhxrnQQQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "what you want"),title: "Focusing On What You Want", author: "Habits of The Wealthy", duration: "11:40", link: "https://www.youtube.com/watch?v=4FYjj9aa75c"),
            VideosInCategories(image: #imageLiteral(resourceName: "past"),title: "Get Over Your Past", author: "HESMotivation", duration: "5:29", link: "https://www.youtube.com/watch?v=DqHHLFktQIk"),
            VideosInCategories(image: #imageLiteral(resourceName: "do the right thing"),title: "How To Always Do The Right Thing", author: "Word Porn", duration: "3:31", link: "https://www.youtube.com/watch?v=Ny_oZca0CcQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "never stress"),title: "How To Never Stress Again", author: "Word Porn", duration: "1:43", link: "https://www.youtube.com/watch?v=qJq8IovXFYQ")]),
        Categories(image: #imageLiteral(resourceName: "human-resources"), name: "Be Confident", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "rejection"),title: "Be Prepared For Rejection", author: "Absolute Motivation", duration: "15:44", link: "https://www.youtube.com/watch?v=vwBJfxx85YU"),
            VideosInCategories(image: #imageLiteral(resourceName: "HERO"),title: "The Hero In You", author: "Absolute Motivation", duration: "6:42", link: "https://www.youtube.com/watch?v=ztChrYW_25w"),
            VideosInCategories(image: #imageLiteral(resourceName: "trust yourself"),title: "Trust Yourself", author: "Chispa Motivation", duration: "4:35", link: "https://www.youtube.com/watch?v=XUOWcwNXFeU"),
            VideosInCategories(image: #imageLiteral(resourceName: "the power of you"),title: "The Power Of You", author: "Chispa Motivation", duration: "5:14", link: "https://www.youtube.com/watch?v=ocrjltwc_Fs"),
            VideosInCategories(image: #imageLiteral(resourceName: "conquer your mind"),title: "How to Conquer Your Mind And Embrace The Suck", author: "Goalcast", duration: "10:32", link: "https://www.youtube.com/watch?v=_J_bOqPhuZA"),
            VideosInCategories(image: #imageLiteral(resourceName: "billionaire"),title: "How I Became A Billionaire By Being Rejected", author: "Word Porn", duration: "2:00", link: "https://www.youtube.com/watch?v=DPlybGCGEwY"),
            VideosInCategories(image: #imageLiteral(resourceName: "they doubted me"),title: "They Doubted Me - This Is What I Did", author: "Word Porn", duration: "1:37", link: "https://www.youtube.com/watch?v=TlTAqToxRLg"),
            VideosInCategories(image: #imageLiteral(resourceName: "self discipline"), title: "Tony Robbins: SELF DISCIPLINE", author: "Law of Attraction Coaching", duration: "6:28", link: "https://www.youtube.com/watch?v=BrzcwXvKMaA"),
            VideosInCategories(image: #imageLiteral(resourceName: "self confidence"),title: "Self Confidence", author: "HESMotivation", duration: "11:26", link: "https://www.youtube.com/watch?v=1bJz9yzmKXs"),
            VideosInCategories(image: #imageLiteral(resourceName: "believe in yourself"),title: "Believe In Yourself", author: "HESMotivation", duration: "11:47", link: "https://www.youtube.com/watch?v=QPLPnlWhkA4"),
            VideosInCategories(image: #imageLiteral(resourceName: "change the way you see yourself"),title: "How to Change the Way You See Yourself", author: "Goalcast", duration: "8:07", link: "https://www.youtube.com/watch?v=1IH0digwjds&t=182s")]),
        Categories(image: #imageLiteral(resourceName: "success"), name: "Limits Don't Exist", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "prove them wrong"), title: "Prove Them Wrong", author: "Be Inspired", duration: "6:59", link: "https://www.youtube.com/watch?v=CPQ1budJRIQ&t=20s"),
            VideosInCategories(image: #imageLiteral(resourceName: "be hungry"), title: "Why it Pays to Be Hungry | Les Brown |", author: "Goalcast", duration: "6:35", link: "https://www.youtube.com/watch?v=xFr0FKnaLDk"),
            VideosInCategories(image: #imageLiteral(resourceName: "remember what you are"),title: "Remember What You Are", author: "MulliganBrothers", duration: "4:02", link: "https://www.youtube.com/watch?v=flBd7yQ-bv8"),
            VideosInCategories(image: #imageLiteral(resourceName: "Muhammad Ali"),title: "Muhammad Ali", author: "MulliganBrothers", duration: "3:54", link: "https://www.youtube.com/watch?v=Y2eKdCmKgcM"),
            VideosInCategories(image: #imageLiteral(resourceName: "resiliency"),title: "Resilienzy", author: "Matuesz M", duration: "2:09", link: "https://www.youtube.com/watch?v=UNQhuFL6CWg"),
            VideosInCategories(image: #imageLiteral(resourceName: "GYM"),title: "Gym Motivation", author: "MulliganBrothers", duration: "10:01", link: "https://www.youtube.com/watch?v=xoXYe9e01_Y"),
            VideosInCategories(image: #imageLiteral(resourceName: "greatest"),title: "The Greatest", author: "Mateusz M", duration: "3:46", link: "https://www.youtube.com/watch?v=V2EfL1j4KYE"),
            VideosInCategories(image: #imageLiteral(resourceName: "process"),title: "The Process", author: "Chispa Motivation", duration: "3:54", link: "https://www.youtube.com/watch?v=350F0VsECvo"),
            VideosInCategories(image: #imageLiteral(resourceName: "contenders"),title: "Contenders", author: "Mateusz M", duration: "3:17", link: "https://www.youtube.com/watch?v=YDSwwEeF_K8"),
            VideosInCategories(image: #imageLiteral(resourceName: "obsession"),title: "Obsession", author: "Chispa Motivation", duration: "6:00", link: "https://www.youtube.com/watch?v=APOKZLzKnFw"),
            VideosInCategories(image: #imageLiteral(resourceName: "temporaryBlack"), title: "The Pyschology Of Winners", author: "Goal Achiever", duration: "7:16", link: "https://www.youtube.com/watch?v=L7DWWwdPDgk"),
            VideosInCategories(image: #imageLiteral(resourceName: "effort"),title: "Effort", author: "HESMotivation", duration: "10:39", link: "https://www.youtube.com/watch?v=67fB-mqtXbY"),
            VideosInCategories(image: #imageLiteral(resourceName: "champion"),title: "Be A Champion", author: "HESMotivation", duration: "10:19", link: "https://www.youtube.com/watch?v=TjskLAh1SO8")]),
        Categories(image: #imageLiteral(resourceName: "focus"), name: "No Plan B", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "rules for success"),title: "5 Rules For Success In Life", author: "HESMotivation", duration: "11:11", link: "https://www.youtube.com/watch?v=f3uaq6Bm8hQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "sucks"),title: "Plan B Sucks", author: "MulliganBrothers", duration: "2:40", link: "https://www.youtube.com/watch?v=uPGNrGfjOIE"),
            VideosInCategories(image: #imageLiteral(resourceName: "decide"),title: "Decide", author: "MulliganBrothers", duration: "3:29", link: "https://www.youtube.com/watch?v=WldsRzmu4zs"),
            VideosInCategories(image: #imageLiteral(resourceName: "change the world"),title: "If You Want To Change The World", author: "Goalcast", duration: "6:01", link: "https://www.youtube.com/watch?v=3sK3wJAxGfs"),
            VideosInCategories(image: #imageLiteral(resourceName: "hungry"),title: "Why It Pays To Be Hungry", author: "Goalcast", duration: "6:36", link: "https://www.youtube.com/watch?v=xFr0FKnaLDk&t=146s"),
            VideosInCategories(image: #imageLiteral(resourceName: "being stupid"),title: "Why You Should Pratice Being Stupid", author: "Goalcast", duration: "2:13", link: "https://www.youtube.com/watch?v=d9-kSa55JVE"),
            VideosInCategories(image: #imageLiteral(resourceName: "be great"),title: "You Can Also Be Great", author: "MulliganBrothers", duration: "3:54", link: "https://www.youtube.com/watch?v=XQnzk334PtA"),
            VideosInCategories(image: #imageLiteral(resourceName: "business"),title: "Business[Warren Buffett]", author: "MulliganBrothers", duration: "3:08", link: "https://www.youtube.com/watch?v=oLWScthpAgY"),
            VideosInCategories(image: #imageLiteral(resourceName: "push yourself today"),title: "Push Yourself Today", author: "Habits Of The Wealthy", duration: "12:20", link: "https://www.youtube.com/watch?v=ULHMQ4ENIyk"),
            VideosInCategories(image: #imageLiteral(resourceName: "how bad"), title: "How Bad Do You Want It?", author: "Matt Howell", duration: "5:50", link: "https://www.youtube.com/watch?v=lsSC2vx7zFQ"),
            VideosInCategories(image: #imageLiteral(resourceName: "how bad do you want it"),title: "How Bad Do You Want It?", author: "Chispa Motivation", duration: "3:41", link: "https://www.youtube.com/watch?v=PX1vUSuFhrA")]),
        Categories(image: #imageLiteral(resourceName: "buyer"), name: "Dream Big", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "vision"), title: "Vision", author: "Matuesz M", duration: "11:03", link: "https://www.youtube.com/watch?v=ZOy0YgUDwDg"),
            VideosInCategories(image: #imageLiteral(resourceName: "focus on one thing"),title: "Focus On One Thing", author: "Habits of the Wealthy", duration: "15:47", link: "https://www.youtube.com/watch?v=4cfbvM-TFjY"),
            VideosInCategories(image: #imageLiteral(resourceName: "fears n dreams"),title: "Fears and Dreams", author: "MulliganBrothers", duration: "15:12", link: "https://www.youtube.com/watch?v=9qLx-oy6Zlc"),
            VideosInCategories(image: #imageLiteral(resourceName: "get angry and get to work"),title: "Get Angry & Get To Work", author: "MulliganBrothers", duration: "13:55", link: "https://www.youtube.com/watch?v=BWW-5Q_EzKM"),
            VideosInCategories(image: #imageLiteral(resourceName: "fail big"),title: "Don't Be Afraid To Fail Big", author: "Goalcast", duration: "4:31", link: "https://www.youtube.com/watch?v=tlY0PkWxCW8"),
            VideosInCategories(image: #imageLiteral(resourceName: "dream"),title: "Dream", author: "Chispa Motivation", duration: "6:19", link: "https://www.youtube.com/watch?v=nsNrZvfCnHg"),
            VideosInCategories(image: #imageLiteral(resourceName: "It's possible"),title: "It's Possible", author: "Chispa Motivation", duration: "4:07", link: "https://www.youtube.com/watch?v=dJ7LPbAoVSs"),
            VideosInCategories(image: #imageLiteral(resourceName: "move forward"),title: "Move Forward Each Day By 1%", author: "Absolute Motivation", duration: "9:48", link: "https://www.youtube.com/watch?v=StTQzAE3orI"),
            VideosInCategories(image: #imageLiteral(resourceName: "mark the world"),title: "Leave Your Mark On The World", author: "Absolute Motivation", duration: "5:35", link: "https://www.youtube.com/watch?v=SSijcZjWMng"),
            VideosInCategories(image: #imageLiteral(resourceName: "fall forward"),title: "Fall Foward", author: "Absolute Motivation", duration: "5:11", link: "https://www.youtube.com/watch?v=6cgxSL926N8"),
            VideosInCategories(image: #imageLiteral(resourceName: "ambition"),title: "Ambition", author: "Absolute Motivation", duration: "11:26", link: "https://www.youtube.com/watch?v=tP7cpSVy92Y")]),
        Categories(image: #imageLiteral(resourceName: "study"), name: "Do More", videos: [
            VideosInCategories(image: #imageLiteral(resourceName: "22 year old"),title: "Millennials and Procrastination", author: "MulliganBrothers", duration: "15:48", link: "https://www.youtube.com/watch?v=nShlloNgM2E"),
            VideosInCategories(image: #imageLiteral(resourceName: "broke the internet"),title: "Future Generations", author: "Be Inspired", duration: "18:39", link: "https://www.youtube.com/watch?v=As8XkJNaHbs"),
            VideosInCategories(image: #imageLiteral(resourceName: "end laziness"),title: "Retrain Your Mind", author: "Be Inspired", duration: "10:34", link: "https://www.youtube.com/watch?v=xp2qjshr-r4&t=44s"),
            VideosInCategories(image: #imageLiteral(resourceName: "invest in yourself"),title: "Invest In Yourself", author: "Be Inspired", duration: "4:02", link: "https://www.youtube.com/watch?v=Eu_dUxTg33I"),
            VideosInCategories(image: #imageLiteral(resourceName: "do more"),title: "Do More", author: "Casey Neistat", duration: "3:45", link: "https://www.youtube.com/watch?v=ZwYy4scOJi8"),
            VideosInCategories(image: #imageLiteral(resourceName: "waste your time"),title: "Stop Wasting Time", author: "Motivation2Study", duration: "15:20", link: "https://www.youtube.com/watch?v=wsNzAuYDgy0"),
            VideosInCategories(image: #imageLiteral(resourceName: "lazy"),title: "Stop Time Wasting", author: "ProjectElon", duration: "10:15", link: "https://www.youtube.com/watch?v=gNMxpi3-RLk"),
            VideosInCategories(image: #imageLiteral(resourceName: "push yourself"),title: "Push Yourself", author: "Motivation2Study", duration: "5:40", link: "https://www.youtube.com/watch?v=d9gwmyPMByM"),
            VideosInCategories(image: #imageLiteral(resourceName: "never give up"),title: "Never Give Up", author: "Ben Lionel Scott", duration: "5:01", link: "https://www.youtube.com/watch?v=PjP9r-HU4fk"),
            VideosInCategories(image: #imageLiteral(resourceName: "deserve more"),title: "Deserve More", author: "Ben Lionel Scott", duration: "4:36", link: "https://www.youtube.com/watch?v=U3Iohi17MeU")])]
    
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
        categoriesTableview.separatorStyle = UITableViewCellSeparatorStyle.none

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
        return 86
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
