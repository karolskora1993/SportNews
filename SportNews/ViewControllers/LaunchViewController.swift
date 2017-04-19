//
//  ViewController.swift
//  SportNews
//
//  Created by apple on 18.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var circleWidth: NSLayoutConstraint!
    
    //MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLabel()
        self.setupCircle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.animateCircle()
    }
    
    //MARK: UISetup
    
    private func setupLabel() {
        self.titleLabel.setupHeaderLabel()
        self.titleLabel.alpha = 0;
    }
    
    private func setupCircle() {
        self.circleView.backgroundColor = UIColor.customGreen
    }
    
    //MARK: Animations
    
    private func animateCircle() {
        UIView.animate(withDuration: 3.0, animations: {
            self.circleWidth.constant+=1000
            self.view.setNeedsLayout()
            self.view.layoutIfNeeded()
        }) { (isFinished) in
            if isFinished {
                self.animateLabel()
            }
        }
    }
    
    private func animateLabel() {
        UIView.animate(withDuration: 2.0, animations: {
            self.titleLabel.alpha+=0.4
        }) { (isFinished) in
            if isFinished {
                self.performSegue(withIdentifier: "TapBarVCSegue", sender: nil)
            }
        }
    }

}

