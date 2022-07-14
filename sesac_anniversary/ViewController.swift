//
//  ViewController.swift
//  sesac_anniversary
//
//  Created by 박시현 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet var dDayLabel: [UILabel]!
    @IBOutlet var dateLabel: [UILabel]!
    @IBOutlet var viewAttribute: [UIView]!
    
    var cnt = 100
    var addDay: Int = 0
    override func viewDidLoad() {
        
        
        
        for label in dDayLabel {
            label.font = UIFont.boldSystemFont(ofSize: 16)
            label.textAlignment = .center
            label.text = "D+\(cnt)"
            cnt += 100
        }
        
        for label2 in dateLabel {
            label2.textAlignment = .center
        }
        
        for view in viewAttribute {
            view.layer.cornerRadius = 10
        }
        super.viewDidLoad()
        datePicker.preferredDatePickerStyle = .wheels
        // Do any additional setup after loading the view.
        // DateFormatter: 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd hh:mm:ss)
//        let format = DateFormatter()
//        format.dateFormat = "M월 d일, yy년"
//
//        let result = format.string(from: Date()) // 현재시간
//        print(result, Date())
//
//        let word = "3월 2일, 19년"
//        let dateResult = format.date(from:word)
//        print(dateResult)
    }

    @IBAction func datePickerClicked(_ sender: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "yyyy년 M월 d일"
        let currentTime = format.string(from: Date())
        dateLabel[0].text = currentTime
        
        // 데이트피커 값 바뀜 -> 100일 뒤는 dateLabel[0]
        // 200일 뒤는 dateLabel[1]
        // 300일 뒤는 dateLabel[2]
        // 400일 뒤는 dateLabel[3]
        
        
    }
    
    
}

