//
//  NarutoView.swift
//  NarutoAnimation
//
//  Created by Adarsh Shukla on 05/07/22.
//

import SwiftUI

struct NarutoView: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            
            Image("sharingan")
                .resizable()
                .frame(width: 0.95 * Constants.width, height: 0.95 * Constants.width)
                .rotationEffect(.degrees(isAnimated ? 180 : -180))
                .offset(x: 0, y: -(Constants.height / 5.4))
                .opacity(0.6)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: false)) {
                        isAnimated.toggle()
                    }
                }
            
            Image("itachi")
                .resizable()
                .frame(maxHeight: .infinity)
                .frame(width: Constants.width)
            
            Circle()
                .fill(.black)
                .frame(width: Constants.width + 0.06 * Constants.width)
                .offset(x: 0, y: Constants.height / 2)
            
            Text("Welcome To Uchiha's")
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.bold)
                .offset(x: 0, y: Constants.height * 0.3123)
            
            SnowFlakes()
            
            Circle()
                .stroke(lineWidth: 3)
                .foregroundColor(.white)
                .frame(width: 70, height: 70)
                .overlay(
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                )
                .offset(x: 0, y: Constants.height * 0.39)
        }
    }
}

struct NarutoView_Previews: PreviewProvider {
    static var previews: some View {
        NarutoView()
    }
}
