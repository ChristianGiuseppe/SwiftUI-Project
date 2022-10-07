//
//  OnboardingView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 05/10/22.
//

import SwiftUI

struct OnboardingView: View {

    var fruits : [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits) {
                item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
