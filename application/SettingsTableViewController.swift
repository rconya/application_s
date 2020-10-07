//
//  SettingsTableViewController.swift
//  application
//
//  Created by Sonya Raspopova on 06.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    let testStr = "testStr" //объявляем ключ, куда будем передавать значение
    let nameKey = "nameKey" //объявляем ключ для имени
    let soundKey = "soundKey" //объявляем ключ для звука
    let volKey = "volKey" //объявляем ключ для громкости
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var volSlider: UISlider!
    @IBOutlet weak var SoundSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        UserDefaults.standard.set("test", forKey: "nameKey") //сохранение в строку, где объявлен ключ
//
//        if UserDefaults.standard.string(forKey: nameKey) != nil {
//            print(UserDefaults.standard.string(forKey: nameKey)!) //вывести значение ключа вариант 1
//        }
        
//        if let name = UserDefaults.standard.string(forKey: testStr){
//        print(name) //вывести значение ключа вариант 2
//        }
            
       loadSettings() //подгружаем настройки
    }
        func loadSettings(){
            if let name = UserDefaults.standard.string(forKey: testStr){
            //функция, которая будет проверят имя и менять его в Профиле
            nameField.text = name
            }
            SoundSwitch.isOn = UserDefaults.standard.bool(forKey: soundKey)
            volSlider.value = UserDefaults.standard.float(forKey: volKey)
        }


    @IBAction func changeNameAction(_ sender: UITextField) {
       //вывести то, что введи в Имя
        if (sender.text != nil){
            UserDefaults.standard.set(sender.text, forKey: "nameKey")
        }
    }
    @IBAction func soundAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: soundKey)
    }
    @IBAction func volAction(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: volKey)
    }
}
