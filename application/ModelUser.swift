//
//  ModelUser.swift
//  application
//
//  Created by Sonya Raspopova on 19.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//

import Foundation
import UIKit

class ModelUser {
    var users = [[User]]()
    init() {
        setup()
    }
    func setup(){
        let man1 = User(name: "Николай", сity: "Москва", image: UIImage(named: "nikolay")!, gender: .male)
        let man2 = User(name: "Петр", сity: "СПБ", image: UIImage(named: "nikolay")!, gender: .male)
        
        let manArray = [man1,man2] //массив с мужчинами
        
        let woman1 = User(name: "Екатерина", сity: "ЕКБ", image: UIImage(named: "katya")!, gender: .female)
        let woman2 = User(name: "Елизавета", сity: "Сочи", image: UIImage(named: "katya")!, gender: .female)
        
        let womanArray = [woman1,woman2] //массив с женщинами
        
//        использовались друзья без общего массива
//        users.append(man1)
//        users.append(man2)
//        users.append(woman1)
//        users.append(woman2)
        users.append(manArray)
        users.append(womanArray)
   
    }
}
