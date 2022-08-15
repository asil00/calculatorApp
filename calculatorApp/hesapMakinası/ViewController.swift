//
//  ViewController.swift
//  hesapMakinası
//
//  Created by Asilcan Çetinkaya on 13.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    var result = 0
    var checkProcess = false
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if checkProcess == true {
            sonucLabel.text = String(sender.tag-1)
            firstNumber = Double(sonucLabel.text!)!
            checkProcess = false
            
        }
        
        else{
            sonucLabel.text = sonucLabel.text! + String(sender.tag-1)
            firstNumber = Double(sonucLabel.text!)!
        }
        
     /*
      0 = 1   1 = 2
      
      2 = 3   3 = 4
      
      4 = 5   5 = 6
      
      6 = 7   7 = 8
      
      8 = 9   9 = 10
      
      / = 12  * = 13
      
      - = 14  + = 15
      
      = = 16  AC = 11
    */
        
    }
    
 
               

    @IBAction func operationsButton(_ sender: UIButton) {
    
    
          if sonucLabel.text != "" && sender.tag != 11 && sender.tag != 16 {  // Eşittir ve AC işareti (16,11)
           secondNumber = Double(sonucLabel.text!)!
            
            if sender.tag == 12 {
                sonucLabel.text = "/"
            }
            
            else if sender.tag == 13 {
                sonucLabel.text = "*"
            }
            
            else if sender.tag == 14 {
                sonucLabel.text = "-"
            }
            
            else if sender.tag == 15 {
                sonucLabel.text = "+"
            }
            
            result = sender.tag
            checkProcess = true
            
        }
        
        else if sender.tag == 16 {
             
            if result == 12 {
                
                sonucLabel.text = String(secondNumber / firstNumber)
            }
            else if result == 13 {
                
                sonucLabel.text = String(secondNumber * firstNumber)
            }
            else if result == 14 {
                
                sonucLabel.text = String(secondNumber - firstNumber)
            }
            else if result == 15 {
                
                sonucLabel.text = String(secondNumber + firstNumber)
            }
            
                
        }
        else if sender.tag == 11 {
            
            sonucLabel.text = ""
             firstNumber = 0
             secondNumber = 0
             result = 0
            
        }
        
    }
    
}

