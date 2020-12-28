//
//  SecondViewController.swift
//  ChallengeTask9
//
//  Created by 酒井健太郎 on 2020/12/28.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private weak var button: UIButton!
    @IBOutlet private weak var button2: UIButton!
    @IBOutlet private weak var button3: UIButton!
    @IBOutlet private weak var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func prefecturesButton(_ sender: AnyObject) {
        let preVC = presentingViewController as! ViewController
        
        switch sender.tag {
        case 1:
            preVC.value = button.currentTitle ?? ""
        case 2:
            preVC.value = button2.currentTitle ?? ""
        case 3:
            preVC.value = button3.currentTitle ?? ""
        case 4:
            preVC.value = button4.currentTitle ?? ""
        default:
            break
        }
        // preVC.value = button.currentTitle ?? ""
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
