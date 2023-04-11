//
//  SplashScreenView.swift
//  japon
//
//  Created by WildFalcon on 20/03/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.gray
                    .ignoresSafeArea(.all)
                VStack {
                    
                    
                    Image(systemName: "film")
                        .font(.system(size: 80))
                        .foregroundColor(.black)
                    Text("SINEFIL")
                        .font(.headline)
                        .fontWeight(.black)
                        .foregroundColor(.black .opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear(){
                    withAnimation(.easeIn(duration: 2.0)) {
                        self.size = 1.1
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                        
                    }
                }
            }
            
            
        }
    }
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
}
