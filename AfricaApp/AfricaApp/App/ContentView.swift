//
//  ContentView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct ContentView: View {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
      
            NavigationView{
                Group{
                    if isGridViewActive {
                        ScrollView(.vertical, showsIndicators: false){
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10)
                            {
                                ForEach(animals) { animal in
                                    
                                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                                        AnimalGridItemView(animal: animal)
                                    }
                                  
                                }
                            }.padding(10)
                            .animation(.easeIn)
                        }
                    }else{
                        List{
                            CoverImageView()
                                .frame(height: 300)
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            
                            ForEach(animals){
                                animal in
                                
                                NavigationLink(destination: AnimalDetailView(animal: animal)){
                                    AnimalListItemView(animal: animal)
                                }
                              
                            }
                    }
                }
                }.navigationBarTitle("Africa", displayMode: .large)
                    .toolbar(){
                        ToolbarItem(placement: .navigationBarTrailing){
                            HStack (spacing: 16){
                                Button(action: {
                                    isGridViewActive = false
                                    haptics.impactOccurred()
                                }){
                                    Image(systemName: "square.fill.text.grid.1x2")
                                   
                                }.foregroundColor( isGridViewActive ? .primary : .accentColor)
                                
                               
                                Button(action: {
                                    isGridViewActive = true
                                    haptics.impactOccurred()
                                }){
                                    Image(systemName: "square.grid.2x2")
                                }.foregroundColor(isGridViewActive ? .accentColor : .primary)
                            }
                            
                            
                        }
                    }
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
