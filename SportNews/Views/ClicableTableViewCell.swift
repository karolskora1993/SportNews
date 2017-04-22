//
//  ClickableTableViewCell.swift
//  SportNews
//
//  Created by apple on 22.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit

class ClickableTableViewCell: UITableViewCell {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            self.isSelected = false
        }
    }
    
    override func prepareForReuse() {
        self.leftImageView.image = nil
        self.textLabel?.text = ""
    }
    
    //MARK: UISetup
    
    private func setupUI() {
        self.titleLabel.setupCellTitleLabel()
    }
    
    func setupCell(withTitle title: String?, leftImageAssetName assetName:String?) {
        if let text = title {
            self.titleLabel.text = text
        }
        if let name = assetName {
            self.leftImageView.image = UIImage(named: name)
        } else {
            self.leftImageView.isHidden = true;
        }
    }
}

