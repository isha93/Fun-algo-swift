//
//  ViewController.swift
//  exam
//
//  Created by isa nur fajar on 08/05/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBAction func goToSumAndMultiply(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSum", sender: nil)
    }
    @IBAction func goToPrime(_ sender: UIButton) {
        performSegue(withIdentifier: "goToPrime", sender: nil)

    }
    @IBAction func goToFib(_ sender: UIButton) {
        performSegue(withIdentifier: "goToFib", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

