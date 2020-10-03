//
//  AuthorizViewController.swift
//  application
//
//  Created by Sonya Raspopova on 03.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//
import UIKit

class AuthorizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //фон экрана
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "IMG_8268.png")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    
    }
    

}
