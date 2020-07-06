//
//  WithOutMP3.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/06.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import Foundation

class WithOutMP3: SoundFile
{
    override func playSound(fileName: String, extensionName: String) {
        if extensionName == "mp3"
        {
            print("can't loading this file")
        }
        player?.stop()
    }
}
