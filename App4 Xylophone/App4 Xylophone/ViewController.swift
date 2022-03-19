//
//  ViewController.swift
//  App4 Xylophone
//
//  Created by Eugen Puzynin on 19.03.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        if let audioFileURL = Bundle.main.url(forResource: soundName, withExtension: "wav", subdirectory: "Sounds") {
            player = try! AVAudioPlayer(contentsOf: audioFileURL)
            player?.play()
        }
    }
    
}
