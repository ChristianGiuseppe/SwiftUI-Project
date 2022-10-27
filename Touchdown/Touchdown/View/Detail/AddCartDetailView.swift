//
//  AddCartDetailView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 27/10/22.
//

import SwiftUI

struct AddCartDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green:  shop.selectedProduct?.green ?? sampleProduct.green,
                  blue:  shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct AddCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddCartDetailView()
            .environmentObject(Shop())
    }
}
