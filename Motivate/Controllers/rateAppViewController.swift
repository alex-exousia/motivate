//
//  rateAppViewController
//  Motivate
//
//  Created by Alexander Niehaus on 8/8/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class rateAppViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let url = URL(string: "https://itunes.apple.com/us/app/mindup-daily-motivation/id1423960043?ls=1&mt=8")
        let request = URLRequest(url: url!)
        
        webView.load(request)
    }

    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func unwindRateApp(_ segue: UIStoryboardSegue) {
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
