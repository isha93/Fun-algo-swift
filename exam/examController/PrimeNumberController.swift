//
//  PrimeNumberController.swift
//  exam
//
//  Created by isa nur fajar on 08/05/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation
import UIKit

class PrimeNumberController: UIViewController {
    var isPrime:Bool = true

    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var inputForm: UITextField!
    @IBOutlet weak var textInput: UILabel!
    @IBAction func actionPrime(_ sender: UIButton) {
        
        if (checkData()) {
            let intValue = Int(self.inputForm.text!)!
            let result = primeNumber(value: intValue)
            if(result){
                self.textInput.text = "Your Input Value \(intValue) is Prime!"
            }else{
                self.textInput.text = "Your Input Value \(intValue) is not Prime!"
            }
        }

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))
    }
    
    
    func primeNumber(value : Int) -> Bool{
        if(value == 2){
            self.textInput.text = "Your Input Value \(value) is Prime!"
            return true
        }
        else if(value < 2){
            self.textInput.text = "Your Input Value \(value) is not Prime!"
            return false
        }
        else{
            for i in 2...value-1{
                if((value%i) == 0){
                    isPrime = false
                    break;
                }
            }
            if(isPrime){
                return true
            }else{
                return false
            }
    }
        return false
    }
    
    func checkData() -> Bool {
        guard inputForm.text!
            .count > 0 else {
            return false
        }
        return true
    }
    
    @objc func backAction(){
        dismiss(animated: true, completion: nil)
    }
}
