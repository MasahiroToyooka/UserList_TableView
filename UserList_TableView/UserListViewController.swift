//
//  ViewController.swift
//  UserList_TableView
//
//  Created by 豊岡正紘 on 2019/08/08.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class UserListViewController: UITableViewController {

    // メンバーのデータを入れる配列
    var members: [UserModel] = [
        UserModel(name: "永井 優", hobby: "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。最近の趣味はバイクに乗ることとキックボクシング。"),
        UserModel(name: "小野 勇輔", hobby: "スポーツをすることと釣りが好きです！サッカーと水泳をやっていました"),
        UserModel(name: "豊岡 正紘", hobby: "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！"),
        UserModel(name: "分目 祐太", hobby: "卓球とランニングが好きです。世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになりました。"),
        UserModel(name: "金田 祐作", hobby: "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしています。最近はキックボクシングジムに通い始めましたが、細身になりたいので筋トレはあまりしないようにしています。ライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがあります。"),
        UserModel(name: "甲斐崎 香", hobby: "あだ名はかおりん。18歳 女。好きなことは旅行と遊び友達と遊ぶことが好きです!!カラオケとかめっちゃ行きますwww"),
        UserModel(name: "志賀 大河", hobby: "バレーボール、サッカー、バスケと運動が全般的に好きです！海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたいです！あと料理も好きです！"),
        UserModel(name: "津國 由莉子", hobby: "あだ名はゆりちゃん。22歳女。好きなことはピアノと麻雀とバレエ。基本的にインドアで引きこもって家でゲームをしていることが多い。夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。"),
        UserModel(name: "中村泰輔", hobby: "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。ポンコツという自負を持っている"),
        UserModel(name: "堀田 真", hobby: "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。"),
        UserModel(name: "田内翔太郎", hobby: "普段は、読書か散歩かアニメを見て過ごしてます！あと最近は筋トレにもハマりかけています"),
        UserModel(name: "福沢貴一", hobby: "サッカー好きの脳筋です。今の趣味はバイトすること週6でみんな大好きcoffeemafiaで働いてますよ!いつでもおいで"),
        UserModel(name: "平田奈那", hobby: "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶しています。弾丸ひとり旅など、突然思い立ったことをやるのが好きです。東京生活わくわくしています〜"),
        UserModel(name: "吉澤優衣", hobby: "ゲームが大好き。特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。他にもピアノや海外旅行や読書など様々な趣味がある。")
    ]
    
    var selectedUser: UserModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = members[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedUser = members[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetail", let vc = segue.destination as? DetailViewController else { return }
        vc.user = selectedUser
    }
}

