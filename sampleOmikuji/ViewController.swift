//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Eriko Ichinohe on 2017/06/02.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //占うボタンが押されたとき発動
    @IBAction func tapUranai(_ sender: UIButton) {
        
        //占いの結果を配列で用意
        var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
        
        //占いの結果をランダムに選ぶための数字を作成
        let r = Int(arc4random()) % omikuji.count
        
        //title:今日の運勢
        //message:吉
        //と表示されるアラートを作りましょう（作成して表示できるようにしてください）
        //アラートを作る
        let alertController = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .alert)
        
        //OKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        //アラートを表示
        present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

