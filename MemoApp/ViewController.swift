//
//  ViewController.swift
//  MemoApp
//
//  Created by 吉澤優衣 on 2019/08/03.
//  Copyright © 2019 吉澤優衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    /// メモ
    @IBOutlet weak var textView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // textView が UITextViewDelegate を使えるようにする
        textView.delegate = self
        
        // AppDelegate を参照するための定数
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // AppDelegate に定義した lastText を参照し、 textView に格納する
        textView.text = appDelegate.lastText
    }
    
    // 削除ボタン
    @IBAction func deleteButton(_ sender: Any) {
        textView.text = ""
        saveText()
    }
    
    // TextView に何か入力されたら動作する
    func textViewDidChange(_ textView: UITextView) {
        saveText()
    }
    
    /// 端末にデータを保存する
    func saveText() {
        // AppDelegate を呼び出して変数に格納する
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // AppDelegate に記述した ""lastText" に入力されている内容を格納する
        appDelegate.lastText = textView.text
        }
    

}

