//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Christian Nocerino on 16/10/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5,  content: {
            NavbarDetail()
                 .padding(.horizontal)
                 .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
           
            TopSectionDetailView().padding().zIndex(1)
            VStack(alignment: .center, spacing: 0, content: {
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)

                ScrollView(.vertical, showsIndicators: false,
                           content: {
                  
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                AddCartDetailView().padding(.bottom, 20)
                Spacer()
            })
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top, -110)
            )
            
            
        
        }).background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
