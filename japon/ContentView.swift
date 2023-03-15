//
//  ContentView.swift
//  japon
//
//  Created by WildFalcon on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("FightClub")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .cornerRadius(20)
                .padding()
            
            
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
