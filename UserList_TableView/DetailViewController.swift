//
//  DetailViewController.swift
//  UserList_TableView
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // 名前を表示するラベル
    @IBOutlet weak var nameLabel: UILabel!
    
    // 趣味を表示するラベル
    @IBOutlet weak var hobbyTextView: UITextView!
    
    // 遷移元からデータを受け取る辞書
    var user = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // nameLabelに受け取ったデータのnameを代入
        nameLabel.text = user["name"]
        // hobbytextViewに受け取ったデータのhobbyを代入
        hobbyTextView.text = user["hobby"]
    }

}
