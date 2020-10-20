//
//  FriendsViewController.swift
//  application
//
//  Created by Sonya Raspopova on 08.10.2020.
//  Copyright © 2020 Sonya Raspopova. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
//    let cellID = "cellID"
    let cellID = "UserTableViewCell"
    var modelUser = ModelUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}
extension FriendsViewController: UITableViewDelegate, UITableViewDataSource{
//   первый вариант ячеек
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //метод числа строе ячеек
//        return 10
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3 //вернем 30 ячеек, то есть в каждой сексии по 10
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //метод числа строе ячеек
        let section = modelUser.users[section] //достаем по ключу section нужную секцию
        return section.count //число пользователей в секции
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return  modelUser.users.count //количество секций
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { //для заголовков секции
        if section == 0{
           return "Мужчины"
        }else{
           return "Женщины"
        }
//        return "Секция\(section)"
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell //объявляем класс ячейки
        
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        
//        трейтий вариант ячейки  
        cell.nameLabel.text = user.name
        cell.userImageView.image = user.image

//        второй вариант ячейки
//        cell.nameLabel.text = "Text"
//        cell.userImageView.image = UIImage(named: "Image1")
        
        
////это был первый вариант без ячейки
//        var cell = tableView.dequeueReusableCell(withIdentifier: cellID) //переиспользуем ячейку, которая ушла за грань экрана
//        if cell == nil{ //если ячейка пустая, нечего переиспользовать
//            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)  //создаем ячейку
//        }
//        cell?.textLabel!.text = "test"
//        cell?.imageView!.image = UIImage(named: "Image1")!
       return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
// вариант сообщения
//        let alert = UIAlertController(title: user.name, message: user.сity, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//        self.present(alert, animated: true, completion: nil)//показать alert
//        вариант сообщения внизу
        let alert = UIAlertController(title: user.name, message: user.сity, preferredStyle: .actionSheet)
        let profiAction = UIAlertAction(title: "Профиль", style: .default) { (alert) in
            self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
        }
        let deleteAction = UIAlertAction(title: "Удалить из друзей", style: .destructive) { (alert) in
            self.modelUser.users[indexPath.section].remove(at: indexPath.row)//удаление нужного пользователя
            tableView.reloadData()
        }
        alert.addAction(profiAction)
        alert.addAction(deleteAction)
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)//показать alert
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //отслеживаем, когда будет осущуствляться переход
        if segue.identifier == "goToProfile"{
            let vc = segue.destination as! UserViewController
            let indexPath = sender as! IndexPath
            let section = modelUser.users[indexPath.section]
            let user = section[indexPath.row]
            vc.user = user  //передаем в контроллер
        }
    }

}
//нужно было для решения ошибки с constrain
//extension NSLayoutConstraint {
//
//    override public var description: String {
//        let id = identifier ?? ""
//        return "id: \(id), constant: \(constant)" //you may print whatever you want here
//    }
//}

