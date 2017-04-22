//
//  RequestManager.swift
//  SportNews
//
//  Created by apple on 20.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit

class RequestManager: NSObject {
    
    //MARK: GET
    
    func getAvailableFootballCompetitions(parameters:[String:String]?, success:([Any]) -> Void, failure:(NSError)->Void) {
        let cm = ConnectionManager()
        cm.requestString = Resources.FOOTBALL_COMPETITIONS
        cm.parameters = parameters
        cm.requestHeaders = [
            "X-Auth-Token": "84a467b1575f48bfacefbc7dc0d088e2"
        ]
        
        cm.connect(withSuccess: { competitions in
            success(competitions)
        }) { error in
            failure(error)
        }
    }
}
