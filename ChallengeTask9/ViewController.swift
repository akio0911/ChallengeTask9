//
//  ViewController.swift
//  ChallengeTask9
//
//  Created by 酒井健太郎 on 2020/12/28.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        let secondVC = segue.source as? SecondViewController
        label.text = secondVC?.prefectureName ?? ""
    }
    
}

final class OtherViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        let secondVC = segue.source as? SecondViewController
        label.text = secondVC?.prefectureName ?? ""
    }
    
}
