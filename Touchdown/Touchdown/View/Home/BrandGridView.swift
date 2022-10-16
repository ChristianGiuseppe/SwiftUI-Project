//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct BrandGridView: View {
    var brandModels: [BrandModel] = brands
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
        LazyHGrid(rows: gridLayout, spacing: 15, content: {
            ForEach(brandModels) { brand in
                BrandItemView(brand: brand)
            }
        })
        .frame(height: 200)
        .padding(15)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .background(colorBackground)
    }
}
