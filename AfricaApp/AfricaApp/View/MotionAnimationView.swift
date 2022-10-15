//
//  MotionAnimationView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 15/10/22.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating : Bool = false
    
    func randomCoordinate(max: CGFloat) -> CGFloat{
        return CGFloat.random(in: 0...max)
    }
    
    func randomWidth() -> CGFloat{
        return CGFloat.random(in: 10...300)
    }
    
    func randomScale() -> CGFloat{
        return CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> CGFloat{
        return CGFloat.random(in: 0.025...1.0)
    }
    
    func randomDelay() -> CGFloat{
        return Double.random(in: 0...2.0)
    }
    
    

    var body: some View {
        GeometryReader { geometry in
            Text("")
            ForEach(0...randomCircle, id: \.self){
                item in
                ZStack{
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomWidth(), height: randomWidth(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate (max: geometry.size.height)
                        )
                        .animation(
                            .interpolatingSpring(stiffness: 0.5, damping: 0.5)
                            .repeatForever()
                            .speed(randomSpeed()).delay(randomDelay()),
                            value: isAnimating
                        )
                        
                        
                        .onAppear{
                            isAnimating = true
                        }
                      
                }
            }.drawingGroup()
           
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
