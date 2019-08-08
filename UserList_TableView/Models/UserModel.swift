//
//  UserModels.swift
//  UserList_TableView
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation

// 名前と趣味のデータを持つ構造体を定義
struct UserModel {
    
    let name: String
    let hobby: String
    
    // 名前と趣味のイニシャライザ
    init(name: String, hobby: String) {
        self.name = name
        self.hobby = hobby
    }
}
