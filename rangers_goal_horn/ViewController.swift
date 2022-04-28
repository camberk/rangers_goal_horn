//
//  ViewController.swift
//  rangers_goal_horn
//
//  Created by Cameron Berkowitz on 4/28/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var player: AVAudioPlayer!
    
    func playSound() {
           let url = Bundle.main.url(forResource: "rangersgoalhorn", withExtension: "mp3")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
        }
    
    

    @IBOutlet weak var goalbutton: UIButton!
    @IBAction func goalhorn(_ sender: Any) {
        if player != nil {
                    player.stop()
                    player = nil
                } else {
                    playSound()
                }
    }
    
}

