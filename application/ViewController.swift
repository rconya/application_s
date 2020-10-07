//
//  ViewController.swift
//  application
//
//  Created by Sonya Raspopova on 02.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        //когда view будет появляться, изменение имени
        super.viewWillAppear(animated)
        if let name = UserDefaults.standard.string(forKey: "nameKey"){
            nameLabel.text = name //подставляется значение в lable значение, которые в настройках
        }
    }
}

