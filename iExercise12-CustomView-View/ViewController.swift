//
//  ViewController.swift
//  iExercise12-CustomView-View
//
//  Created by Minh Tan Vu on 24/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var personalDataStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tạo một UITapGestureRecognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(stackViewTapped(_:)))
        
        // Đặt số lần chạm cần nhận dạng (ví dụ: 1)
        tapGesture.numberOfTapsRequired = 1
        
        // Thêm UITapGestureRecognizer vào UIStackView
        personalDataStackView.addGestureRecognizer(tapGesture)
        personalDataStackView.isUserInteractionEnabled = true
    }
    @objc func stackViewTapped(_ sender: UITapGestureRecognizer) {
       
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "PersonalVC") as! PersonalViewController
        
        secondVC.modalPresentationStyle = .popover
        self.present(secondVC, animated: true)
    }

}

