//
//  ViewController.swift
//  PianoMe
//
//  Created by Aditya Pranav Bhuvanapalli on 14/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var scale: Int = 3;
    
    // MARK: Outlets
    @IBOutlet weak var lblScale: UITextField!
    
    @IBOutlet weak var btnUp: UIButton!
    
    @IBOutlet weak var btnDown: UIButton!
    
    // MARK: Actions
    @IBAction func onBtnUpClick(_ sender: UIButton) {
        scale += 1;
        btnDown.isEnabled = true;
        if(scale == 7) {
            btnUp.isEnabled = false;
        }
        lblScale.text = String(scale);
    }
    
    @IBAction func OnBtnDownClick(_ sender: UIButton) {
        scale -= 1;
        btnUp.isEnabled = true;
        if(scale == 0) {
            btnDown.isEnabled = false;
        }
        lblScale.text = String(scale);
    }
    
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblScale.text = String(scale);
    }
}

