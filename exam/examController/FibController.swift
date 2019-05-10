//
//  FibController.swift
//  exam
//
//  Created by isa nur fajar on 09/05/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation
import UIKit

class FibController: UIViewController {
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var inputForm: UITextField!
    @IBOutlet weak var resultText: UILabel!
    @IBAction func fibAction(_ sender: UIButton) {
        if checkData() {
            let intValue = Int(inputForm.text!)!
            let res = fib(value: intValue)
            self.resultText.text = res.description
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))
    }
    
    func fib(value : Int) -> [Int]{
        var sequence = [ 0 , 1]
        if value >= 3 {
        for _ in 0...value - 3{
            let frist = sequence[sequence.count - 2]
            let second = sequence.last!
            sequence.append(frist + second)
            }
            return sequence
        }else if value < 3 {
            if value <= 1 {
                return sequence
            }else{
                for _ in 0...value - 2{
                    let frist = sequence[sequence.count - 2]
                    let second = sequence.last!
                    sequence.append(frist + second)
                }
                return sequence
            }
        }
        return [1,0]
    }
    func checkData() -> Bool {
        guard inputForm.text!.count > 0 else {
            return false
        }
        return true
    }
    @objc func backAction(){
        dismiss(animated: true, completion: nil)
    }
    
}
