//
//  UserViewController.swift
//  application
//
//  Created by Sonya Raspopova on 19.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var inageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    var user:User!//передаем переменную user
    override func viewDidLoad() {
        super.viewDidLoad()
//когда будет осуществлять переход? заполняем поля
        nameLabel.text = user.name
        cityLabel.text = user.сity
        inageView.image = user.image
        
        //меняем окантовку картинки в зависимости от пола
        inageView.layer.borderWidth = 3.0
        
        if user.gender == .male{
            inageView.layer.borderColor = UIColor.blue.cgColor
        }else{
            inageView.layer.borderColor = UIColor.red .cgColor
        }
    }
}
