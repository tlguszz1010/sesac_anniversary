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
    @IBOutlet var imageAttribute: [UIImageView]!
    
    var cnt = 100
    var addDay: Int = 0
    let defaultsdata = UserDefaults.standard
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        datePicker.preferredDatePickerStyle = .inline
        dateLabel[0].text = defaultsdata.string(forKey: "date")

       for label in dDayLabel {
            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.textAlignment = .left
            label.text = "D+\(cnt)"
            label.textColor = UIColor.white
            cnt += 100
        }
        
        for label2 in dateLabel {
            label2.textAlignment = .center
            label2.textColor = UIColor.white
        }
        
        for image in imageAttribute {
            image.layer.cornerRadius = 10
        }
        
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
        
        
        // 첫번째 - label의 text에는 String만 들어갈 수 있다. 그래서 날짜/시간 데이터를 String으로 만들어야 한다.
        format.dateStyle = .short
        format.dateFormat = "yyyy년 M월 d일"
        
        
        if let date100 = Calendar.current.date(byAdding: .day, value: 99, to: datePicker.date) {
            let datestr100 = format.string(from: date100)
            dateLabel[0].text = datestr100
            
        }
        
        if let date200 = Calendar.current.date(byAdding: .day, value: 199, to: datePicker.date) {
            let datestr200 = format.string(from: date200)
            dateLabel[1].text = datestr200
            
        }
        
        if let date300 = Calendar.current.date(byAdding: .day, value: 299, to: datePicker.date) {
            let datestr300 = format.string(from: date300)
            dateLabel[2].text = datestr300
            
        }
        
        if let date400 = Calendar.current.date(byAdding: .day, value: 399, to: datePicker.date) {
            let datestr400 = format.string(from: date400)
            dateLabel[3].text = datestr400
            
        }

        
        
        
        
        // 데이트피커 값 바뀜 -> 100일 뒤는 dateLabel[0]
        // 200일 뒤는 dateLabel[1]
        // 300일 뒤는 dateLabel[2]
        // 400일 뒤는 dateLabel[3]
        
        
    }
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        // 버튼 눌렀을 때 현재 설정한 데이터 저장.
        // UserDefaults.standard.set(데이터,키(key))
        // 여러개의 데이터를 저장해야할 때를 위해 key값이 존재한다. 하고싶은 문자열로 ~
        
        defaultsdata.set(dateLabel[0].text, forKey: "date")
    }
    
    
}

