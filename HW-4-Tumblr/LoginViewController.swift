//
//  LoginViewController.swift
//  HW-4-Tumblr
//
//  Created by Adam Noffsinger on 11/8/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func didTapCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
