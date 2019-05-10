//
//  SumAndMultiplyController.swift
//  exam
//
//  Created by isa nur fajar on 08/05/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation
import UIKit

class SumAndMultyplyController: UIViewController {
    @IBOutlet weak var inputForm: UITextField!
    @IBOutlet weak var inputForm2: UITextField!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var iconAdd: UIImageView!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var navItem: UINavigationItem!
    
    
    @IBAction func SummaryBtn(_ sender: UIButton) {
        let value1 = inputForm.text!
        let value2 = inputForm2.text!
        if(checkData()){
            UIView.animate(withDuration: 2.0, animations: {
                self.iconAdd.transform = CGAffineTransform(rotationAngle: (90.0 * .pi) / 45.0)
            })
            let valueInt = Int(value1)!
            let valueInt2 = Int(value2)!
            let result = summaryFunc(value1: valueInt, value2: valueInt2)
            self.resultText.text = String(result)
        }
    }
    @IBAction func MultiplyBtn(_ sender: UIButton) {
        let value1 = inputForm.text!
        let value2 = inputForm2.text!

        if(checkData()){
            UIView.animate(withDuration: 2.0, animations: {
                self.iconAdd.transform = self.iconAdd.transform.rotated(by: CGFloat(M_PI_4))
            })
            let valueInt = Int(value1)!
            let valueInt2 = Int(value2)!
            let result = multiplyFunc(value1: valueInt, value2: valueInt2)
            resultText.text = String(result)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))
    }
    
    func summaryFunc(value1 : Int, value2 : Int) -> Int{
        let resultSum = value1 + value2
        return resultSum
    }
    
    func multiplyFunc(value1 : Int, value2 : Int) -> Int{
        let resultMulti : Int = value1 * value2
            return resultMulti
    }
    
    func checkData() -> Bool {
        guard self.inputForm.text!.count > 0 && self.inputForm2.text!.count > 0 else {
            return false
        }
        return true
    }
    
    @objc func backAction(){
        dismiss(animated: true, completion: nil)
    }
}
