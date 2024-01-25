//
//  ViewController.swift
//  Alapati_Assignment01
//
//  Created by student on 1/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    
  
    @IBAction func SubmitBTN(_ sender: Any) {
        //read the variable to the local variable
        var fn = firstNameOutlet.text!
        var ln = lastNameOutlet.text!
        var a = yearOutlet.text!
        var num = Int(a) ?? 0
        let mytime = Date()
        var myCalendar = Calendar.current
        var currentYear = myCalendar.component(.year, from: mytime)
        var diff = Int(currentYear) - num
        fullNameLabel.text = " \(fn) \(ln)"
        initialsLabel.text = " \(ln.first!)  \(fn.first!)"
        ageLabel.text = "\(diff)"
    }
    
    
    @IBAction func ResetBTN(_ sender: Any) {
        fullNameLabel.text! = "  "
        initialsLabel.text! = "  "
        ageLabel.text! = "  "
        
    }
    
}

