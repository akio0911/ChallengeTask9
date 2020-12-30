//
//  SecondViewController.swift
//  ChallengeTask9
//
//  Created by 酒井健太郎 on 2020/12/28.
//

import UIKit

final class SecondViewController: UIViewController {
    
    private(set) var prefectureName = ""
    @IBOutlet private weak var tokyoButton: UIButton!
    @IBOutlet private weak var kanagawaButton: UIButton!
    @IBOutlet private weak var saitamaButton: UIButton!
    @IBOutlet private weak var chibaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func tokyo(_ sender: AnyObject) {
        // ボタンに表示しているボタン名をデータとして流用するのはやめた方が良い。
        // ボタン名を変更した途端に動かなくなる処理が出てくる
        didTapPrefectureButton(prefectureName: "東京都", sender: sender)
    }
    
    @IBAction func kanagawa(_ sender: AnyObject) {
        didTapPrefectureButton(prefectureName: "神奈川県", sender: sender)
    }
    
    @IBAction func saitama(_ sender: AnyObject) {
        didTapPrefectureButton(prefectureName: "埼玉県", sender: sender)
    }
    
    @IBAction func chiba(_ sender: AnyObject) {
        didTapPrefectureButton(prefectureName: "千葉県", sender: sender)
    }
    
    private func didTapPrefectureButton(prefectureName: String, sender: AnyObject) {
        self.prefectureName = prefectureName
        performSegue(withIdentifier: "exitSegue", sender: sender)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
