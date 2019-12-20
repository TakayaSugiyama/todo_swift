//
//  ViewController.swift
//  Swift5TableViewBasic
//
//  Created by TakayaSugiyama on 2019/12/20.
//  Copyright © 2019 TakayaSugiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,UITextFieldDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  textArray.count
    }
    
        func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = textArray[indexPath.row]
       
        cell.imageView!.image = UIImage(named: "checkImage")
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //タップしたときにその配列の番号の中身を取り出して値を渡す。
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
        
        navigationController?.pushViewController(nextVC, animated: true)
        
        nextVC.todo = textArray[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height / 6
    }

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    var textArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        textField.delegate = self
    }
    
    //キーボードのreturnキーが押されたら発火する。
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textArray.append(textField.text!)
        textField.resignFirstResponder() //キーボードを閉じる
        textField.text = ""
        tableView.reloadData()
        return true
    }


}

