//
//  DetailViewController.swift
//  UserList_TableView
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var hobbytextField: UITextView!
    
    var user: UserModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ユーザーデータ"
        
        nameLabel.text = user?.name
        hobbytextField.text = user?.hobby
    }

}
