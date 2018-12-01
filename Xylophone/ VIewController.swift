//
//  ViewController.swift
//  Xylophone
//
//  Created by Giulia Boscaro on 27/10/18.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!
    let noteArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        playNote(noteToBePlayed: noteArray[sender.tag - 1])
    }
    
    
    func playNote(noteToBePlayed: String) {
        
        let soundURL = Bundle.main.url(forResource: noteToBePlayed, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }

}

