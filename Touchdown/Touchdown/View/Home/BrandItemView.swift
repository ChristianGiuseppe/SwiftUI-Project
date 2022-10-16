//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct BrandItemView: View {
    var brand: BrandModel
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke( Color.gray, lineWidth: 1)
            )
       
            
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .background(colorBackground)
            .padding()
    }
}
