//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 15/10/22.
//

import Foundation


struct VideoModel: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    
    var thumbnail: String{
        "video-\(id)"
    }
}
