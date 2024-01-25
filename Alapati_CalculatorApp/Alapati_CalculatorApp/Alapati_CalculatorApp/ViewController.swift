//
//  ViewController.swift
//  Alapati_CalculatorApp
//
//  Created by student on 2/16/23.


import UIKit

class ViewController: UIViewController {
    
    var operand1 = -1.1
    var _operator = " "
    var operand2 = -1.1
    var result = -1.1

    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        clearText()
    }
    func clearText(){
        resultOutlet.text = " "
    }
    @IBAction func buttonPlusMinus(_ sender: UIButton) {
        if(_operator == "-"){
            _operator = "+"
        }
        else if (_operator == "+" ){
            _operator = "-"
        }
    }
    
    @IBAction func buttonPercentage(_ sender: UIButton) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text! = "%"
        _operator = "%"
        resultOutlet.text! = ""
    }
    
    @IBAction func buttonDiv(_ sender: UIButton) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = resultOutlet.text!+"/"
        _operator = "/"
        resultOutlet.text! = ""
    }
    
    @IBAction func button7Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
        if(operand1 == -1.1){
            operand1 = 7
        }
        else{
            operand2 = 7
        }
    }
    @IBAction func button8Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
        if(operand1 == -1.1){
            operand1 = 8
        }
        else{
            operand2 = 8
        }
    }
    @IBAction func button9Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
        if(operand1 == -1.1){
            operand1 = 9
        }
        else{
            operand2 = 9
        }
    }
    @IBAction func buttonMul(_ sender: UIButton) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text! = "*"
        _operator = "*"
        resultOutlet.text! = ""
    }
    @IBAction func button4Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"
        if(operand1 == -1.1){
            operand1 = 4
        }
        else{
            operand2 = 4
        }
    }
    @IBAction func button5Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
        if(operand1 == -1.1){
            operand1 = 5
        }
        else{
            operand2 = 5
        }
    }
    @IBAction func button6Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "6"
        if(operand1 == -1.1){
            operand1 = 6
        }
        else{
            operand2 = 6
        }
    }
    @IBAction func buttonSub(_ sender: UIButton) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = "-"
        _operator = "-"
        resultOutlet.text = ""
    }
    @IBAction func button1Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "1"
        if(operand1 == -1.1){
            operand1 = 1
        }
        else{
            operand2 = 1
        }
    }
    @IBAction func button2Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
        if(operand1 == -1.1){
            operand1 = 2
        }
        else{
            operand2 = 2
        }
    }
    @IBAction func button3Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"
        if(operand1 == -1.1){
            operand1 = 3
        }
        else{
            operand2 = 3
        }
    }
    @IBAction func buttonPlus(_ sender: UIButton) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = "+"
        _operator = "+"
        resultOutlet.text = ""
    }
    @IBAction func button0Click(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "0"
        if(operand1 == -1.1){
            operand1 = 0
        }
        else{
            operand2 = 0
        }
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "."
        if(_operator == " "){
            _operator = "."
        }
        
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        operand2 = Double(resultOutlet.text!) ?? 0.0
        if _operator.contains("+"){
                   var result = operand1+operand2
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text! = "\(Int(result))"
                   }
                   else {resultOutlet.text = "\(result)"}
               }
               else if _operator.contains("-"){
                   var result = operand1-operand2
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text! = "\(Int(result))"
                   }
                   else{resultOutlet.text = "\(result)"}
               }
               if _operator.contains("*"){
                   var result = operand1*operand2
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text! = "\(Int(result))"
                   }
                   else {
                       resultOutlet.text = "\(result)"}
               }
        if _operator.contains("/"){
                    var result = operand1/operand2
                    if(operand2 == 0){
                        resultOutlet.text! = "Not a Number"
                    }
                    else if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text! = "\(Int(result))"
                    }
                    else {
                        resultOutlet.text! = "\(round(result * 100000) / 100000.0)"}
                }
                if _operator.contains("%"){
                    var result = operand1.truncatingRemainder(dividingBy : operand2)
                    if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text! = "\(Int(result))"
                    }
                    else {
                        resultOutlet.text! = "\(round(result * 100000) / 100000.0)"}
                }
            }
}

