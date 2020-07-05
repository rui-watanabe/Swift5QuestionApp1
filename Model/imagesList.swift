//
//  imagesList.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/05.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import Foundation

class ImagesList {
    var list = [ImagesModel]()
    
    init()
    {
        list.append(ImagesModel(imageName: "0", collectOrNot: true))
        list.append(ImagesModel(imageName: "1", collectOrNot: false))
        list.append(ImagesModel(imageName: "2", collectOrNot: false))
        list.append(ImagesModel(imageName: "3", collectOrNot: false))
        list.append(ImagesModel(imageName: "4", collectOrNot: true))
        list.append(ImagesModel(imageName: "5", collectOrNot: false))
        list.append(ImagesModel(imageName: "6", collectOrNot: true))
        list.append(ImagesModel(imageName: "7", collectOrNot: true))
        list.append(ImagesModel(imageName: "8", collectOrNot: false))
        list.append(ImagesModel(imageName: "9", collectOrNot: true))
        list.append(ImagesModel(imageName: "10", collectOrNot: true))

    }
}
