//
//  DetailViewController.swift
//  UserList_TableView
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var user: UserModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ユーザーデータ"
        view.backgroundColor = .red
    }

}
