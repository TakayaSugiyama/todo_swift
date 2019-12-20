//
//  NextViewController.swift
//  Swift5TableViewBasic
//
//  Created by TakayaSugiyama on 2019/12/20.
//  Copyright © 2019 TakayaSugiyama. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var todoLabel: UILabel!
    
    var todo = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        todoLabel.text = todo
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
