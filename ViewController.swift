//
//  ViewController.swift
//  RatingPrompt
//
//  Created by Rayane Xavier da Nobrega on 17/10/23.
//

import StoreKit
import UIKit

class ViewController: UIViewController {

    private let button = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Rate Now", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 55)
        button.center = view.center
        button.addTarget(self,
                         action: #selector(buttonTapped),
                         for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        guard let scene = view.window?.windowScene else {
            print("no scene")
            return
        }
        SKStoreReviewController.requestReview(in: scene)
    }
}

