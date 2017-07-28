//
//  ViewController.swift
//  UPDownGame
//
//  Created by GP on 27/07/2017.
//  Copyright © 2017 Gameplay. All rights reserved.
//

import UIKit
import GameplayKit

let random = GKARC4RandomSource()
var num: Int = 0
var count: Int = 0

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var okBtn: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var hintLabel: UILabel!
    
    func hint(ud: String)
    {
        hintLabel.text = "Hint : \(ud)"
    }
    
    func countt() {
        count += 1
        countLabel.text = "Count : \(count)"
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel.textColor = #colorLiteral(red: 0, green: 0.9322476387, blue: 0.3171723485, alpha: 1)
        
        startBtn.isEnabled = true
        startBtn.isSelected = true
        startBtn.setTitle("Start", for: .normal)
        startBtn.tintColor = #colorLiteral(red: 0, green: 0.9322476387, blue: 0.3171723485, alpha: 1)
        
        okBtn.isSelected = true
        okBtn.isEnabled = true
        okBtn.setTitle("OK", for: .normal)
        okBtn.tintColor = #colorLiteral(red: 0, green: 0.9322476387, blue: 0.3171723485, alpha: 1)
        
        input.placeholder = "Put Number Here!!"
        input.keyboardType = UIKeyboardType.numberPad
        
        countLabel.text = "Count : \(count)"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        input.endEditing(true)
    }
    
    @IBAction func getRandom(_ sender: Any)
    {
        let ran = random.nextInt(upperBound: 100)
        count = 0
        countLabel.text = "Count : \(count)"
        
//        hintLabel.text = "\(ran)"
        
        return num = ran
    }
    
    @IBAction func game(_ sender: Any)
    {
        countt()
        print(num)
        if let temp = Int(input.text!)
        {
            if temp == num
            {
                hint(ud: "맞았습니다!")
            }
            else if temp > num
            {
                hint(ud: "DOWN")
            }
            else
            {
                hint(ud: "UP")
            }
        }
    }
    
    

}

