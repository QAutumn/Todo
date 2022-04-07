//
//  TodoViewController.swift
//  Todo
//
//  Created by 澈水 on 2022/4/7.
//

import Foundation
import UIKit
import SnapKit


class TodoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let todos = [
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false),
        Todo(name: "今天上午去游泳，然后回来学习📖", checked: false)
    ]
    
    var tableview = UITableView()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(TodoCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(tableview)
        tableview.snp.makeConstraints { make in
            make.size.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TodoCell
        
        cell.label.text = todos[indexPath.row].name
        
        return cell
    }
}
