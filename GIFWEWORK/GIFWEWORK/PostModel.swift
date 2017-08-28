//
//  PostModel.swift
//  BMLRayen
//
//  Created by Rayen Kamta on 7/27/17.
//  Copyright © 2017 Rayen Kamta. All rights reserved.
//

import Foundation
import ReactiveJSON


class PostModel {
    
    var displayName: String
    var embedUrl: String
    
    init?(withEntity e:Entity<Int>) {
        guard let displayName = e.attributes?.json["display_name"] as? String
            , let embedUrl = e.attributes?.json["embed_url"] as? String
            else {
                return nil
        }
        
        self.displayName = displayName
        self.embedUrl = embedUrl

    }
    
}

