//
//  ASNetworkManager.swift
//  ArtcmSwift
//
//  Created by smartrookie on 17/1/6.
//  Copyright © 2017年 smartrookie. All rights reserved.
//

import Foundation
import Alamofire


/*
 "http://www.artcm.cn/api/v2/exhibition/brief/?limit=1&offset=0&period_type=process"
 */


class ASNetworkManager {
    
    let httpHeader : HTTPHeaders = ["":""]
    
    
    func request(urlString:String,completionHandler:@escaping (DataResponse<Any>) -> Void) {

        Alamofire.request(urlString).responseJSON { (response) in
    
            completionHandler(response)
        }
    }

}
