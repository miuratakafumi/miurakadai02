//
//  ViewController.swift
//  miurakadai02
//
//  Created by 三浦貴文 on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    
//　テキストフィールドの作成
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
//　　ラベルの作成
    @IBOutlet weak var label: UILabel!
    
    
//  ボタンを押した時の動作
    @IBAction func button(_ sender: Any) {
        
        //テキストフィールドのアンラップ
        let number1 = Float(textField1.text ?? "") ?? 0
        let number2 = Float(textField2.text ?? "") ?? 0
        
        //計算の分岐
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "\(number1 + number2)"
        case 1:
            label.text = "\(number1 - number2)"
        case 2:
            label.text = "\(number1 * number2)"
        case 3:
            if number2 == 0 {
                label.text = "計算できません"
            } else {
                label.text = "\(number1 / number2)"
            }
        default:
            label.text = ""
        }
    }
}
