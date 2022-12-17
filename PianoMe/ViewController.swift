//
//  ViewController.swift
//  PianoMe
//
//  Created by Aditya Pranav Bhuvanapalli on 14/12/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var scale: Int = 3;
    var player: AVAudioPlayer!
    
    // MARK: Outlets
    @IBOutlet weak var lblScale: UITextField!
    
    @IBOutlet weak var btnUp: UIButton!
    
    @IBOutlet weak var btnDown: UIButton!
    
    // MARK: Actions
    @IBAction func onKeyPress(_ sender: UIButton) {
//        print(sender.titleLabel?.text!);
        playSound(key: (sender.titleLabel?.text)!);
    }
    
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
        if(scale == 1) {
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
    
    // MARK: Functions
    func playSound(key: String) {
        let soundResource: String = key + String(scale);
        let url = Bundle.main.url(forResource: soundResource, withExtension: "mp3");
        player = try! AVAudioPlayer(contentsOf: url!);
        player.play();
    }
}

