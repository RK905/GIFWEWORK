//
//  ApiService.swift
//  BMLRayen
//
//  Created by Rayen Kamta on 7/27/17.
//  Copyright © 2017 Rayen Kamta. All rights reserved.
//


import ReactiveJSON
import ReactiveSwift

struct GIPHYTrending : Singleton, ServiceHost {
    
    fileprivate(set) static var shared = Instance()
    typealias Instance = GIPHYTrending
    
    static var scheme: String { return "https" }
    static var host: String { return "api.giphy.com" }
    static var path: String? { return "/v1/gifs/trending" }
    
}


