//
//  MovieDetailView.swift
//  projet00
//
//  Created by Mahdia Amriou on 22/09/2022.
//

import SwiftUI

struct MovieDetailView: View {
    let movie : Movie
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            Text(movie.director)
                .font(.headline)
                .fontWeight(.bold)
                .padding(5)
            
            Text("\(movie.year)")
                .italic()
            
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(movie.type)
                .italic()
                
                .padding(30)
            Text(movie.description)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
            
                .padding()
    Spacer()
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[0])
    }
}

