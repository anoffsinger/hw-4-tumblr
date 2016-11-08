//
//  MainTabBarViewController.swift
//  HW-4-Tumblr
//
//  Created by Adam Noffsinger on 11/7/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class MainTabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var exploreCalloutImageView: UIImageView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].isSelected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        if selectedIndex != 1 {
            UIView.animate(withDuration: 0.2, delay: 0, options: [], animations: {
                self.exploreCalloutImageView.alpha = 1.0
            }, completion: nil)
            UIView.animate(withDuration:0.8, delay: 0.0,
                           // Autoreverse runs the animation backwards and Repeat cycles the animation indefinitely.
                options: [.autoreverse,.repeat], animations: { () -> Void in
                    self.exploreCalloutImageView.transform = CGAffineTransform(translationX: 0, y: 10)
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.2, delay: 0, options: [], animations: {
                self.exploreCalloutImageView.alpha = 0
            }, completion: nil)
        }
    }
}
