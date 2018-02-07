//
//  ViewController.swift
//  TareaBuscarString
//
//  Created by MacBook  Air on 06/02/18.
//  Copyright © 2018 MacBook  Air. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let words = ["delfin","perro grande","gato","caballo","pulpo","caracol chiquito","gallo bonito","vaca","borrego bonito","pato","ganso chiquito","pollo bonito","jirafa grande","tigre","puma"]
    @IBOutlet weak var output: UITextView!
    @IBOutlet weak var input: UITextField!
    @IBAction func Search(_ sender: UIButton) {
        let toFind = input.text!
        var toShow = "";
        for word in words{
            if word.localizedCaseInsensitiveContains(toFind){
                toShow = toShow + " \n" + word
            }
        }
        output.text = toShow
    }
    
}

