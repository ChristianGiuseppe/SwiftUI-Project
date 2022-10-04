//
//  HomeView.swift
//  Restart
//
//  Created by Christian Nocerino on 02/10/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    @State var isAnimating : Bool = false;
    var body: some View {
        // MARK: HEADER
        VStack{
            
        Spacer()
        ZStack{
            CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
            Image("character-2")
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 35 : -35)
                .animation(.easeInOut(duration: 4).repeatForever(), value:isAnimating)
                .padding()
        }
       
                   
        Spacer()
        // MARK: BODY
        Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
        Spacer()
            Button(action: {
                withAnimation{
                    playSound(sound: "succes", type:"m4a")
                    isOnboardingViewActive = true
                }
               
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill").imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded)).fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        // MARK: FOOTER
        }.onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 , execute:{
                isAnimating = true
            })
           
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
