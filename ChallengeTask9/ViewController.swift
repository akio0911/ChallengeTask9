//
//  ViewController.swift
//  ChallengeTask9
//
//  Created by 酒井健太郎 on 2020/12/28.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var label: UILabel!
    var value = "未選択"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label.text = value
    }
    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
}

final class OtherViewController: UIViewController {
    
    @IBOutlet private weak var label: UILabel!
    var value = "未選択"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label.text = value
    }
    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
}
