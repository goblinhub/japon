//
//  ContentView.swift
//  japon
//
//  Created by WildFalcon on 14/03/2023.
//

import SwiftUI

    
struct ContentView: View {
    
    let Films = movieNames
    var body: some View {
        NavigationView {
            List {
                ForEach(Films, id: \.self) { Films in
                    NavigationLink(destination: Text(Films)) {
                        Image(systemName:"photo" )
                            .padding()
                            .swipeActions {
                                Button() {
                                } label: {
                                    Label("Info", systemImage: "info.bubble.fill") }
                                .tint(.blue)
                            }
                        
                        
                        Text(Films)
                            .padding()
                        
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
            
 

