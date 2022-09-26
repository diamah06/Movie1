//
//  ContentView.swift
//  projet00
//
//  Created by Mahdia Amriou on 21/09/2022.
//

import SwiftUI

struct AddMovieView: View {
    @State var addTitle: String = ""
    @State var addAuthor: String = ""
    @State var addYear: String = ""
    @State var addSynopsis: String = ""
    @State var selectedType: GenderMovie = .Drame
    @Environment(\.presentationMode) var presentationMode //pour connaitre les fonction swiftui dans notre cas dismiss pour fermer la bouton (fermer) //
    
    var body: some View {
    // Navigation bare ou navigation view dans body se ferme a la fin du programme //
        NavigationView {
            VStack {
                
                Form {
                    Section {
                        TextField("Titre du film", text: $addTitle)
                        TextField("Réalisateur", text: $addAuthor)
                        TextField("Année de sortie", text: $addYear)
                    } header: {
                        Text("CARACTÉRISTIQUES")
                    }
                    
                    Section {
                        TextField("Pitch", text: $addSynopsis)
                            .frame( minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                    } header: {
                        Text("SYNOPSIS")
                    }
                    
                    Section {
                        Picker(selection: $selectedType, label: Text("")) {
                            ForEach(GenderMovie.allCases, id: \.self) { genre in
                                Text(genre.rawValue)
                                
                            }
                        }
                        .labelsHidden() // drame à gauche //
                        
                    } header: {
                        Text("GENRE")
                    }
                    
                }
                
               .navigationTitle("Ajouter un film") // titre de la bare de navigation //
                .navigationBarTitleDisplayMode(.inline) // titre soit centré (aligné)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss() // pour fermer le bouton et il faut déclarer presentationMode avant body avec : @Environment(\.presentationMode) var presentationMode//
                }, label: {
                    Text("Fermer")
                        .foregroundColor(.red)
                        
                }))
                
            }
            
        }
    }
    
    struct AddMovieView_Previews: PreviewProvider {
        static var previews: some View {
            AddMovieView()
        }
    }
}
