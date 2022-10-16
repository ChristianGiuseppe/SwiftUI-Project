//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import Foundation


struct CategoryModel: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
