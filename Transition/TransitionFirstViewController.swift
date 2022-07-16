//
//  TransitionFirstViewController.swift
//  sesac_anniversary
//
//  Created by 박시현 on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    // override는 재정의해서 사용하기 위해
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        randomNumberLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }

    @IBAction func unwindTransitionFirstVC(Segue: UIStoryboardSegue) {
        // FirstVC로 돌아올 수 있는 코드
    }
    
}
