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
    
    //MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLabel()
        self.setupCircle()
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
        UIView.animate(withDuration: 1.0, animations: {
            self.circleView.frame.size.width+=10
        }) { (isFinished) in
            if isFinished {
                self.animateLabel()
            }
        }
    }
    
    private func animateLabel() {
        UIView.animate(withDuration: 1.0, animations: {
            self.titleLabel.alpha+=0.1
        }) { (isFinished) in
            if isFinished {
                self.performSegue(withIdentifier: "TapBarVCSegue", sender: nil)
            }
        }
    }

}

