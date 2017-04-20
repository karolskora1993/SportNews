//
//  ViewController.swift
//  SportNews
//
//  Created by apple on 18.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var circleWidth: NSLayoutConstraint!
    
    //MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLabel()
        self.setupView()
    }
    //MARK: UISetup
    
    private func setupLabel() {
        self.titleLabel.setupHeaderLabel()
    }
    
    private func setupView() {
        self.view.backgroundColor = UIColor.customGreen
    }
}

