//
//  SettingsViewController.swift
//  SportNews
//
//  Created by apple on 22.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var footballCompetitions: [FootballCompetition] = []
    
    //MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: UITableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? ClickableTableViewCell {
            if footballCompetitions.count >= indexPath.row {
                cell.setupCell(withTitle: self.footballCompetitions[indexPath.row].league, leftImageAssetName: "TODO")
            }
            return cell
        } else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
