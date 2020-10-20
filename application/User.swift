//
//  User.swift
//  application
//
//  Created by Sonya Raspopova on 19.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//

import Foundation
import UIKit

enum Gender{
    case male
    case female
}

class User: NSObject {
    var name:String
    var сity:String
    var image:UIImage
    var gender:Gender
    init(name:String,сity:String,image:UIImage,gender:Gender) {
        self.name = name
        self.сity = сity
        self.image = image
        self.gender = gender
    }
}
