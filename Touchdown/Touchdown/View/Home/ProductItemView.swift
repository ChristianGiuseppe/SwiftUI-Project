//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct ProductItemView: View {
    var product: ProductModel
    var body: some View {
        VStack(alignment: .leading, spacing: 6,  content: {
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
            }
            .background(Color(red: product.red,
                green:product.green, blue:product.blue)
            )
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .padding()
            .background(colorBackground)
    }
}
