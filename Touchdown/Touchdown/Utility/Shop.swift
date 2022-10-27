//
//  Shop.swift
//  Touchdown
//
//  Created by Christian Nocerino on 27/10/22.
//

import Foundation


class Shop: ObservableObject{
    @Published var showingProduct : Bool = false
    @Published var selectedProduct: ProductModel? = nil
    
}
