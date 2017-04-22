//
//  FootballCompetitionsViewController.swift
//  SportNews
//
//  Created by apple on 22.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit

class FootballCompetitionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var footballCompetitions: [FootballCompetition] = []
    
    //MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.fetchFootballCompetitionsData()
    }
    
    //MARK: UITableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? ClickableTableViewCell {
            if footballCompetitions.count >= indexPath.row {
                cell.setupCell(withTitle: footballCompetitions[indexPath.row].caption, leftImageAssetName: nil)
            }
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.footballCompetitions.count
    }
    
    //MARK: Fetch Data
    
    private func fetchFootballCompetitionsData() {
        RequestManager.getAvailableFootballCompetitions(parameters: nil, success: { responseData in
            
            if let comp = responseData as? [FootballCompetition] {
                self.footballCompetitions = comp
                
            }
        }) { error in
            //TODO
        }
    }
}
