//
//  FruitDetailView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 06/10/22.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                  HeaderFruitView(fruit: fruit)
                    Spacer()
            
                    VStack(alignment: .leading, spacing: 20){
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                       
                        FruitNutrientsView(fruit: fruit)
                        
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                    
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }.edgesIgnoringSafeArea(.top)
        }
       
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}