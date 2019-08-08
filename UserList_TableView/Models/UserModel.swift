//
//  UserModels.swift
//  UserList_TableView
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation

struct UserModel {
    
    let name: String
    let hobby: String
    
    init(name: String, hobby: String) {
        self.name = name
        self.hobby = hobby
    }
}
