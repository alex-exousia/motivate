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

        let url = URL(string: "https://en.wikipedia.org/wiki/Mud%C3%A9jar_revolt_of_1264%E2%80%931266")
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
