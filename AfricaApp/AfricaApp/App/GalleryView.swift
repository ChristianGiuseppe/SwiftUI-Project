//
//  GalleryView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    @State var animalSelected : String  =  "lion"
    
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 30) {
                Image(animalSelected)
                    .resizable()
                    .scaledToFit()
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
                    ForEach(animals){
                        animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .onTapGesture {
                                animalSelected = animal.image
                            }
                            
                    }
                }.padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
