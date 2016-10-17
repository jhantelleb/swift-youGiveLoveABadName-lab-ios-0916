//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var shrinkConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
    let duration = 1.5
    let delay = 0.25
    let options = UIViewKeyframeAnimationOptions.beginFromCurrentState
        
    imageView.translatesAutoresizingMaskIntoConstraints = false
    
    UIView.animateKeyframes(withDuration: duration, delay: delay, options: options, animations: {
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.1, animations: {
            self.shrinkConstraint.isActive = true
            self.view.layoutIfNeeded()})
        UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.0, animations: {
            self.shrinkConstraint.isActive = false
            self.heightConstraint.isActive = true
            self.view.layoutIfNeeded()})
        UIView.addKeyframe(withRelativeStartTime: 1.75, relativeDuration: 0.34, animations: {
            self.heightConstraint.isActive = false
            self.view.layoutIfNeeded()
             })
        }
            , completion: nil)
    }
}

