//
//  MovieData.swift
//  Alapati_Movies
//
//  Created by student on 4/28/23.
//

import Foundation
import UIKit
struct Movie{
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot:String
    var cast: [String] = []
}

struct Genre{
    
    var category : String
    var movies:[Movie] = []
}

let genre1 = Genre(category: "Horror", movies: [
    Movie(title: "PHENOMENA", image: UIImage(named:"H1")!, releasedYear: "1985", movieRating: "5", boxOffice: "20", moviePlot: "horror",cast: ["Jennifer Connelly"]),
    Movie(title: "Conjuring", image: UIImage(named: "H2")!, releasedYear: "2013", movieRating: "4", boxOffice: "30", moviePlot: "too much horror",cast: ["xyz"]),
    Movie(title: "The NUN", image: UIImage(named: "H3")!, releasedYear: "2019", movieRating: "4", boxOffice: "450", moviePlot: "nuns movie",cast: ["Rich Delia"]),
    Movie(title: "Annabelle", image: UIImage(named: "H4")!, releasedYear: "2014", movieRating: "5", boxOffice: "257", moviePlot: "doll ghost",cast: ["Douglas"]),
    Movie(title: "OPEN WATER ", image: UIImage(named: "H5")!, releasedYear: "2003", movieRating: "3", boxOffice: "167", moviePlot: "thriller with intense moments",cast: ["Blanchard Ryan"])])

let genre2 = Genre(category: "Drama", movies: [
    Movie(title: "Joker", image: UIImage(named: "D1")!, releasedYear: "2019", movieRating: "5", boxOffice: "200", moviePlot: "mentally troubled comedian",cast: [""]),
    Movie(title: "The Shawshank Redemption", image: UIImage(named: "D2")!, releasedYear: "1994", movieRating: "4", boxOffice: "130", moviePlot: "two improsoned men",cast: ["Tim Robbins"]),
    Movie(title: "The Godfather", image: UIImage(named: "D3")!, releasedYear: "1972", movieRating: "4", boxOffice: "50", moviePlot: "crime",cast: ["Marlon Brando"]),
    Movie(title: " The Dark Knight", image: UIImage(named: "D4")!, releasedYear: "2004", movieRating: "5", boxOffice: "27", moviePlot: "super hero",cast: ["Heath Ledger"]),
    Movie(title: "Titanic", image: UIImage(named: "D5")!, releasedYear: "1972", movieRating: "3", boxOffice: "16", moviePlot: "love story ",cast: ["Leonardo DiCaprio"])])

let genre3 = Genre(category: "Documentry", movies: [
    Movie(title: "Black Fish", image: UIImage(named: "DO1")!, releasedYear: "2013", movieRating: "5", boxOffice: "200", moviePlot: " Killer whale ",cast: ["Gabriela Cowperthwaite"]),
    Movie(title: "Fahrenheit 9/11", image: UIImage(named: "DO2")!, releasedYear: "2004", movieRating: "4", boxOffice: "30", moviePlot: "the war in iraq",cast: ["Michael Moore"]),
    Movie(title: "The Act of Killing", image: UIImage(named: "DO3")!, releasedYear: "2015", movieRating: "4", boxOffice: "50", moviePlot: "massive killing",cast: [" Anwar Congo"]),
    Movie(title: "An Inconvenient Truth", image: UIImage(named: "DO4")!, releasedYear: "2006", movieRating: "5", boxOffice: "25", moviePlot: "environmental challenge",cast: ["Al Gore "]),
    Movie(title: "Amy ", image: UIImage(named: "DO5")!, releasedYear: "2012", movieRating: "3", boxOffice: "67", moviePlot: "life of songwriter",cast: ["Amy Winehouse"])])

let gen = [genre1,genre2,genre3]
