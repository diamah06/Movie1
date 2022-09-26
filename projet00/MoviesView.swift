//
//  MoviesView.swift
//  projet00
//
//  Created by Mahdia Amriou on 22/09/2022.
//

import SwiftUI


struct MoviesView: View {
    
    @State var showAddView = false 
    
    var body: some View {
        
        NavigationView {
            VStack {
                List(movies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        MovieRow(title: movie.title, year: movie.year)
                    }
                    
                    
                }
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                // action bouton plus , et le sheet pour qd tu clique c'es la fenetre AddMovieView qui apparait, aussi faut déclarer showAddview avant body par : @State var showAddView = false//
                .navigationBarItems(trailing: Button(action: {
                    showAddView = true
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.red)
                }))
                .sheet(isPresented: $showAddView) {
                    AddMovieView()
                }
            }
        }
    }
}
            
struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}


struct MovieRow: View {
    let title: String
    let year: Int
    var body: some View {
        HStack{
            Image(systemName: "film")
                .foregroundColor(.red)
            Text(title)
            Text(String(year))
                .font(.subheadline)
        }
    }
}
