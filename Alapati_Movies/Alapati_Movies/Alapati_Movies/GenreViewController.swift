//
//  ViewController.swift
//  Alapati_Movies
//
//  Created by student on 4/28/23.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
                
        myCell.textLabel?.text = genArr[indexPath.row].category
    
      
        
                return myCell
    }
    

    @IBOutlet weak var genreTableView: UITableView!
    
    var genArr = gen
    var gCategory = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
        self.title = "Movies App"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"{
            
            let destination = segue.destination as! MoviesViewController
            
            //send the selected product row
            
            destination.moviesArray = genArr[(genreTableView.indexPathForSelectedRow?.row)!].movies
            
            destination.title = genArr[(genreTableView.indexPathForSelectedRow?.row)!].category
        }
        
    }


}

