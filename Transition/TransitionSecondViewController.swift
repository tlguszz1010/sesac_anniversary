//
//  TransitionSecondViewController.swift
//  sesac_anniversary
//
//  Created by 박시현 on 2022/07/15.
//

import UIKit

enum UserDefaultKey: String {
    case happyEmotion
}
class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    @IBOutlet weak var CountLabel: UILabel!
    /*
     1. 앱 켜면 데이터를 가지고 와서 텍스트 뷰에 보여주어야 한다. viewDidLoad or viewWillAppear
     2. 바뀐 데이터를 저장해주어야 한다. => UserDefault
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        CountLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        print("저장되었습니다.")
        
        print("TransitionSecondViewController", #function)
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            mottoTextView.text = "고래밥"
        }
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondViewController", #function)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondViewController", #function)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondViewController", #function)
        
    }
    
    
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
      //UserDefaults.standard.set(데이터,키(key))
        print("저장되었습니다.")
    }
    
    
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        
        // 기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: UserDefaultKey.happyEmotion.rawValue)
        
        // 감정 + 1
        let updateValue = currentValue + 1
        
        // 새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        // 레이블에 새로운 내용 보여주기
        CountLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        print("저장되었습니다.")
    }
    
    

}
