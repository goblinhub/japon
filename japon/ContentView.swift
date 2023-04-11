//
//  ContentView.swift
//  japon
//
//  Created by WildFalcon on 14/03/2023.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let genre : String
    let filmDuration : String
}

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        HStack {
            Image(movie.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            
            Text(movie.title)
                .font(.headline)
        }
        .padding(.vertical, 8)
    }
}

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        HStack{
        VStack{
                
            Spacer()
            Image(movie.imageName)
            
                
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
                .aspectRatio(contentMode: .fit)
                .navigationBarTitle(movie.title, displayMode: .inline)
                .cornerRadius(25)
            
            HStack{
                Text(movie.filmDuration).bold()
                Text(movie.genre).bold()
                    .padding()
                }
                
                HStack{
            
                    Spacer()
                    Image(systemName: "star.fill").foregroundColor(.orange)
                    Image(systemName: "star.fill").foregroundColor(.orange)
                    Image(systemName: "star.fill").foregroundColor(.orange)
                    Image(systemName: "star.fill").foregroundColor(.orange)
                    Image(systemName: "star.fill")
                    Spacer()
                    
                   
                 }
                }
            }
        }
    }

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(movies) { movie in
                NavigationLink(destination: MovieDetailView(movie: movie)) {
                    MovieRow(movie: movie)
                }
            }
            .navigationBarTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
