//
//  ContentView.swift
//  japon
//
//  Created by WildFalcon on 14/03/2023.
//

import SwiftUI

    
struct ContentView: View {
    @State private var movieList = ["Fight Club", "Interstellar", "Pulp Fiction", "The Hobbit"]
    
    var body: some View {
        VStack {
            List{
                ForEach(movieList, id: \.self) { name in
                    Text (name)
                        .padding()
                        .swipeActions {
                            Button() {
                            } label: {
                                Label("Info", systemImage: "info")
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
}
