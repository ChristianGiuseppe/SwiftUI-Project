//
//  Constant.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//
import SwiftUI

//DATA
let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let sampleProduct = products[0]

//COLOR
let colorBackground : Color = Color("ColorBackground")
let colorGray : Color = Color(UIColor.gray)

//LAyout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
