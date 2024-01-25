//
//  MoviesViewController.swift
//  Alapati_Movies
//
//  Created by student on 4/28/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        for movieList in genresArr{
//
//            movieCount =  movieList.movies.count
//        }
        return moviesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        
            
            cell.assignMovies(movie:moviesArray[indexPath.row])
        
        
        
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
            movieNameLabel.text = "Movie Name : \(moviesArray[indexPath.row].title)"
            
            movieRatingLabel.text = "Movie Rating : \(moviesArray[indexPath.row].movieRating)"
            
            movieBoxOfficeLabel.text = "Box Office Collection : \(moviesArray[indexPath.row].boxOffice)"
            movieYearLabel.text = "Movie Released Year : \(moviesArray[indexPath.row].releasedYear)"
            moviePlotLabel.text = "Plot : \(moviesArray[indexPath.row].moviePlot)"
        movieCastLabel.text = "Cast : \(moviesArray[indexPath.row].cast.joined(separator: ", "))"
        
        
    }
    
    var movieCount = 0
    var genresArr = gen
    
    var moviesArray:[Movie] = []
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
