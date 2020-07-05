//
//  File.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/05.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import Foundation

class ImagesModel {
    let imageText: String
    let answer: Bool
    
    init(imageName: String, collectOrNot: Bool)
    {
        imageText = imageName!
        answer = collectOrNot!
    }
}
