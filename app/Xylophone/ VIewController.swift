//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
   // var selectedSoundFileName : String = ""
    var audioPlayer: AVAudioPlayer!
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
           

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
       
       //selectedSoundFileName = soundArray[sender.tag]
       // print(selectedSoundFileName)
        
        playSound(soundtag: soundArray[sender.tag])

    }
    
    func playSound(soundtag : String){
        
        let soundUrl = Bundle.main.url(forResource: soundtag, withExtension: "wav" )
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
  

}

