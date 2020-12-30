//
//  SecondViewController.swift
//  ChallengeTask9
//
//  Created by 酒井健太郎 on 2020/12/28.
//

import UIKit

final class SecondViewController: UIViewController {
    
    private(set) var prefectureName = ""
    @IBOutlet private weak var button: UIButton!
    @IBOutlet private weak var button2: UIButton!
    @IBOutlet private weak var button3: UIButton!
    @IBOutlet private weak var button4: UIButton!
    
    override func viewDidLoad() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func prefecturesButton(_ sender: AnyObject) {
        print(prefectureName)
        switch sender.tag {
        case 1:
            prefectureName = button.currentTitle ?? ""
        case 2:
            prefectureName = button2.currentTitle ?? ""
        case 3:
            prefectureName = button3.currentTitle ?? ""
        case 4:
            prefectureName = button4.currentTitle ?? ""
        default:
            break
        }
        performSegue(withIdentifier: "exitSegue", sender: sender)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
