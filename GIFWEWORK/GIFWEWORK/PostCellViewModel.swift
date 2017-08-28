//
//  PostCellViewModel.swift
//  BMLRayen
//
//  Created by Rayen Kamta on 7/27/17.
//  Copyright © 2017 Rayen Kamta. All rights reserved.
//

import Foundation
import ReactiveJSON

class PostCellViewModel {
    let title: String
    let body: String
    
    init?(withEntity e:Entity<Int>) {
        guard let title = e.attributes?.json["display_name"] as? String
            , let body = e.attributes?.json["embed_url"] as? String
        else {
                return nil
        }
        
        self.title = title
        self.body = body
    }
    
    init?(withPostModel p:PostModel?) {
        guard let title = p?.displayName
            , let body = p?.embedUrl
        else {
                return nil
        }
        
        self.title = title
        self.body = body
    }
    
}

