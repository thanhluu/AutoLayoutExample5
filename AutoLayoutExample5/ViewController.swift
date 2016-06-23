//
//  ViewController.swift
//  AutoLayoutExample5
//
//  Created by Luu Tien Thanh on 6/23/16.
//  Copyright © 2016 Thanh Luu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let orangeView = UIView()
    let purpleView = UIView()
    let blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        orangeView.backgroundColor = UIColor(red: 255/255.0, green: 148/255.0, blue: 0/255.0, alpha: 1.0)
        view.addSubview(orangeView)
        
        purpleView.backgroundColor = UIColor(red: 204/255.0, green: 102/255.0, blue: 255/255.0, alpha: 1.0)
        view.addSubview(purpleView)
        
        blueView.backgroundColor = UIColor(red: 102/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1.0)
        view.addSubview(blueView)
    }
    
    override func viewWillLayoutSubviews() {
        setupOranceViewConstraints()
        setupPurpleViewConstraints()
        setupBlueViewConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupOranceViewConstraints() {
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        let orangeViewCenterXConstraint = NSLayoutConstraint(item: orangeView, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        
        let orangeViewBottomSpaceConstraint = NSLayoutConstraint(item: orangeView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .BottomMargin, multiplier: 1.0, constant: -50.0)
        
        let orangeViewHeightConstraint = NSLayoutConstraint(item: orangeView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 57.0)
        
        let orangeViewWidthConstraint = NSLayoutConstraint(item: orangeView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 200.0)
        
        view.addConstraints([
            orangeViewCenterXConstraint,
            orangeViewBottomSpaceConstraint,
            orangeViewHeightConstraint,
            orangeViewWidthConstraint
        ])
    }
    
    func setupPurpleViewConstraints() {
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        
        let purpleViewLeadingSpaceConstraint = NSLayoutConstraint(item: purpleView, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .LeadingMargin, multiplier: 1.0, constant: 8.0)
        
        let purpleViewBottomSpaceConstraint = NSLayoutConstraint(item: purpleView, attribute: .Bottom, relatedBy: .Equal, toItem: orangeView, attribute: .Top, multiplier: 1.0, constant: -8.0)
        
        let purpleViewTrailingConstraint = NSLayoutConstraint(item: purpleView, attribute: .Trailing, relatedBy: .Equal, toItem: blueView, attribute: .Leading, multiplier: 1.0, constant: -8.0)
        
        let purpleViewTopSpaceConstraint = NSLayoutConstraint(item: purpleView, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: 8)
        
        view.addConstraints([
            purpleViewLeadingSpaceConstraint,
            purpleViewBottomSpaceConstraint,
            purpleViewTrailingConstraint,
            purpleViewTopSpaceConstraint
        ])
    }
    
    func setupBlueViewConstraints() {
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        let blueViewTopSpaceConstraint = NSLayoutConstraint(item: blueView, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: 8)
        let blueViewBottomSpaceConstraint = NSLayoutConstraint(item: blueView, attribute: .Bottom, relatedBy: .Equal, toItem: orangeView, attribute: .Top, multiplier: 1.0, constant: -8.0)
        let blueViewTrailingSpaceConstraint = NSLayoutConstraint(item: blueView, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .TrailingMargin, multiplier: 1.0, constant: -8.0)
        let equalWidthConstraints = NSLayoutConstraint(item: blueView, attribute: .Width, relatedBy: .Equal, toItem: purpleView, attribute: .Width, multiplier: 1.0, constant: 0.0)
        
        view.addConstraints([
            blueViewTopSpaceConstraint,
            blueViewBottomSpaceConstraint,
            blueViewTrailingSpaceConstraint,
            equalWidthConstraints
        ])
    }

}

