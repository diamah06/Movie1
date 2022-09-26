//
//  File.swift
//  projet00
//
//  Created by Mahdia Amriou on 22/09/2022.
//

import Foundation


enum GenderMovie: String, CaseIterable {
    case Thriller
    case Romantique
    case Action
    case Drame
}

struct Film: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let year: Int
    let photo: String
    let genre: GenderMovie
    let synopsis: String
   
}
    var films = [
        Film(title: "Les Infiltrés", author: "Martin Scorcèse", year: 2006, photo: "Infiltres", genre: .Action, synopsis: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre comment le monde marche."),
        Film(title: "Inception", author: "", year: 2010, photo: "Inception", genre: .Romantique, synopsis: ""),
        Film(title: "The Revenant", author: "", year: 2015, photo: "Revenant", genre: .Drame, synopsis: "")

]

//        var infiltre = Film(title: "Les Infiltrés", author: "Martin Scorcèse", year: 2006, photo: "Infiltres", genre: "Action", synopsis: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre comment le monde marche.")

extension Film {
    static var preview: Film {
        Film(title: "Les Infiltrés", author: "Martin Scorcèse", year: 2006, photo: "Infiltres", genre: .Action, synopsis: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre comment le monde marche.")
    }
}

