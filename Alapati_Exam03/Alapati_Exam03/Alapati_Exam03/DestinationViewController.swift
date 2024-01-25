//
//  DestinationViewController.swift
//  Alapati_Exam03
//
//  Created by student on 4/27/23.
//

import UIKit

class DestinationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabel.text = name
        
        imageOL.image = UIImage(named: imageName)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    var name : String = ""
    var imageName : String = ""
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var click: UIButton!
    
    
    @IBAction func clickBTN(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.imageOL.alpha = 0.0
        }, completion: { (finished: Bool) in
            // Unhide the image after 1 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                UIView.animate(withDuration: 0.5, animations: {
                    self.imageOL.alpha = 1.0
                })
            })
        })
    }
    
}
