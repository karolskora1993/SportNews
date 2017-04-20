//
//  ConnectionManager.swift
//  SportNews
//
//  Created by apple on 20.04.2017.
//  Copyright © 2017 karol. All rights reserved.
//

import UIKit
import Alamofire

class ConnectionManager: NSObject {

    var accessKeys:[String]?
    var detailKey: String?
    var desiredClass: String?
    var methodType: HTTPMethod = .get
    var requestString: String?
    
    func connect(withSuccess success:([Any])-> Void, failure:(NSError)-> Void) {
        
    }
}
