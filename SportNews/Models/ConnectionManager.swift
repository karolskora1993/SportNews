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
    var requestString: String!
    var parameters: [String:String]?
    var requestHeaders: HTTPHeaders?

    
    func connect(withSuccess success:([Any])-> Void, failure:(NSError)-> Void) {
        Alamofire.request(self.requestString!, method: self.methodType, parameters: self.parameters, headers: self.requestHeaders).validate().responseJSON { response in
            switch response.result {
            case .success:
                self.extractResponse(response)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func extractResponse(_ response: DataResponse<Any>) {
        
        
    }
    
    func handleError(_ error: NSError) {
        
    }
}
