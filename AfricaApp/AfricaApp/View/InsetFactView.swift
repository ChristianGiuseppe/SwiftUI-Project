//
//  InsetFactView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 08/10/22.
//

import SwiftUI

struct InsetFactView: View {
    let animal: AnimalModel
    var body: some View {
        Group{
            TabView{
                ForEach(animal.fact, id: \.self){ fact in
                    Text(fact)
                }
         
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static var animals : [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
    }
}
