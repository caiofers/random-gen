//
//  ViewController.swift
//  Gerador Randômico
//
//  Created by Caio Fernandes on 06/03/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func randomNumberLaber(_ sender: UIButton) {
        randomNumberLabel.text = String(randomNumber(MIN: 1, MAX: 10))
    }
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func randomNumber(MIN: Int, MAX: Int)-> Int{
        return Int(arc4random_uniform(UInt32(MAX-MIN)) + UInt32(MIN));
    }

}

