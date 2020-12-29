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
    
    @IBAction func prefecturesButton(_ sender: UIButton) {
        let tab = self.presentingViewController as! UITabBarController
        let nav = tab.selectedViewController as! UINavigationController
        if let vc = nav.viewControllers[nav.viewControllers.count - 1] as? ViewController{
            switch sender.tag {
            case 1:
                vc.value = button.currentTitle ?? ""
            case 2:
                vc.value = button2.currentTitle ?? ""
            case 3:
                vc.value = button3.currentTitle ?? ""
            case 4:
                vc.value = button4.currentTitle ?? ""
            default:
                break
            }
            
        } else if let othervc = nav.viewControllers[nav.viewControllers.count - 1] as? OtherViewController {
            switch sender.tag {
            case 1:
                othervc.value = button.currentTitle ?? ""
            case 2:
                othervc.value = button2.currentTitle ?? ""
            case 3:
                othervc.value = button3.currentTitle ?? ""
            case 4:
                othervc.value = button4.currentTitle ?? ""
            default:
                break
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
