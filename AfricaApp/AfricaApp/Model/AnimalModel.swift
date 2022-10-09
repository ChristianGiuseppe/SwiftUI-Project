//
//  AnimalModel.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 08/10/22.
//

import Foundation

struct AnimalModel: Codable, Identifiable {
    let id : String
    let name: String
    let headline: String
    let description:  String
    let link: String
    let image: String
    let gallery : [String]
    let fact : [String]
}
