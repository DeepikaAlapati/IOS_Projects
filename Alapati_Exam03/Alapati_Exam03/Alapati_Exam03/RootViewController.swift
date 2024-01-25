//
//  RootViewController.swift
//  Alapati_Exam03
//
//  Created by student on 4/27/23.
//

import UIKit

class RootViewController: UIViewController,UITableViewDelegate, UITableViewDataSource  {

  
    

    @IBOutlet weak var tableOL: UITableView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    var park_Obj = park()
    
    var park_array = parkDetails
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return park_array.count
        }
    
    
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = tableOL.dequeueReusableCell(withIdentifier:  "cell", for: indexPath)
        
        //populate a cell
        cell.textLabel?.text = park_array[indexPath.row].parkName
        
        //return a cell
        return cell
        
    }
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        tableOL.delegate = self
        tableOL.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ResultSegue", sender: self)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
            guard let destinationVC = segue.destination as? DestinationViewController else { return }
            let selectedRowIndex = tableOL.indexPathForSelectedRow?.row
            destinationVC.name = park_array[selectedRowIndex!].parkName
            destinationVC.imageName = park_array[selectedRowIndex!].parkImage
        }
    }

    
}
