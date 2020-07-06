//
//  SoundFile.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/06.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile {
    var player: AVAudioPlayer?
    
    func playSound(fileName: String, extensionName: String)
    {
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch  {
            print("error")
        }
    }
    
}
