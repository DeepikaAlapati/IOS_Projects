//
//  MovieCollectionViewCell.swift
//  Alapati_Movies
//
//  Created by student on 4/28/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
   
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    func assignMovies(movie: Movie){
        imageViewOL.image = movie.image
    }
    
}
