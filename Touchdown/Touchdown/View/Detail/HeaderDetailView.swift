//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 23/10/22.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        }.foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
    }
}
