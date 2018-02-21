//
//  ViewController.swift
//  jueguito
//
//  Created by MacBook  Air on 13/02/18.
//  Copyright © 2018 MacBook  Air. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var jugar: UIButton!
    
    let reds: [CGFloat] = [1.0,0.0,0.0,1.0,1.0,0.0]
    let greens: [CGFloat] = [0.0,1.0,0.0,1.0,0.0,1.0]
    let blues: [CGFloat] = [0.0,0.0,1.0,0.0,1.0,1.0]
    var buttons: [UIButton] = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [b1,b2,b3,b4,b5,b6]
        // Do any additional setup after loading the view, typically from a nib.
        initColors()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initColors(){
        for i in 0..<self.buttons.count {
            self.buttons[i].backgroundColor = UIColor(red:reds[i],green:greens[i],blue:blues[i],alpha:0.5)
        }
    }
    
    @IBAction func b1click(_ sender: Any) {
    }
    
    @IBAction func b2click(_ sender: Any) {
    }
    
    @IBAction func b3click(_ sender: Any) {
    }
    
    @IBAction func b4click(_ sender: Any) {
    }
    
    @IBAction func b5click(_ sender: Any) {
    }
    
    @IBAction func b6click(_ sender: Any) {
    }
}

