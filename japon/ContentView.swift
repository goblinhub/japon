//
//  ContentView.swift
//  japon
//
//  Created by WildFalcon on 14/03/2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            List{
                
                Text("Fight Club")
                Text("Interstellar")
                Text("Pulp Fiction")
                Text("Hobbit")
                
            .navigationBarTitle(Text("SINEFIL")) 
                
            }
        }
        
        
        
    }
                
                
            
}
        
        
                
                
             
            
        
       


    
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
