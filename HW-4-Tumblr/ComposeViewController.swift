//
//  ComposeViewController.swift
//  HW-4-Tumblr
//
//  Created by Adam Noffsinger on 11/7/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    @IBOutlet weak var textImageView: UIButton!
    @IBOutlet weak var photoImageView: UIButton!
    @IBOutlet weak var quoteImageView: UIButton!
    @IBOutlet weak var linkImageView: UIButton!
    @IBOutlet weak var chatImageView: UIButton!
    @IBOutlet weak var videoImageView: UIButton!
    
    var textImageViewOrigin: CGPoint!
    var photoImageViewOrigin: CGPoint!
    var quoteImageViewOrigin: CGPoint!
    var linkImageViewOrigin: CGPoint!
    var chatImageViewOrigin: CGPoint!
    var videoImageViewOrigin: CGPoint!
    
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // screen size
        let bounds = UIScreen.main.bounds
        screenWidth = bounds.size.width
        screenHeight = bounds.size.height
        
        textImageViewOrigin = textImageView.center
        photoImageViewOrigin = photoImageView.center
        quoteImageViewOrigin = quoteImageView.center
        linkImageViewOrigin = linkImageView.center
        chatImageViewOrigin = chatImageView.center
        videoImageViewOrigin = videoImageView.center
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textImageView.center = CGPoint(x: 29, y: screenHeight + 50)
        photoImageView.center = CGPoint(x: 123, y: screenHeight + 50)
        quoteImageView.center = CGPoint(x: 218, y: screenHeight + 50)
        linkImageView.center = CGPoint(x: 29, y: screenHeight + 50)
        chatImageView.center = CGPoint(x: 123, y: screenHeight + 50)
        videoImageView.center = CGPoint(x: 218, y: screenHeight + 50)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.2, delay: 0, options: [], animations: {
            self.textImageView.center = self.textImageViewOrigin
        }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.1, options: [], animations: {
            self.photoImageView.center = self.photoImageViewOrigin
        }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
            self.quoteImageView.center = self.quoteImageViewOrigin
        }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.3, options: [], animations: {
            self.linkImageView.center = self.linkImageViewOrigin
        }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.4, options: [], animations: {
            self.chatImageView.center = self.chatImageViewOrigin
        }, completion: nil)
        UIView.animate(withDuration: 0.2, delay: 0.5, options: [], animations: {
            self.videoImageView.center = self.videoImageViewOrigin
        }, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didTapNevermind(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
