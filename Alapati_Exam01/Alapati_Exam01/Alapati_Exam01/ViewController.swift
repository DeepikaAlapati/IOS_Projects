//
//  ViewController.swift
//  Alapati_Exam01
//
//  Created by student on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterINR: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertUSD(_ sender: Any) {
        //convert inr to usd
        var input=Double(enterINR.text!)
        var usd = 82.93
        var input1 = Double(input * usd)
        if(input == 0)
        {
            imageOL.image = UIImage(names:" usd ")
            displayLabel.text = ("\(input) in USD is $ \(input1)")
            
        }
        else{
            imageOL.image = UIImage(names:" default ")
            displayLabel.text = ("Please enter some amount")
        }
        
    }
    
    @IBAction func convertCAD(_ sender: Any) {
        //convert inr to cad
        var input2 = Double(enterINR.text!)
        var cad = 1.26
        var input3 = Double(input2)*cad
    
        if(input == 0)
        {
            imageOL.image = UIImage(names:" cad ")
            displayLabel.text = ("\(input2) in CAD is $ \(input3)")        }
        else{
            imageOL.image = UIImage(names:" default ")
            displayLabel.text = ("Please enter some amount")
        }
    }
    
    
    
   
}

