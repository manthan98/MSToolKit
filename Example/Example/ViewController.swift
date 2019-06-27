//
//  ViewController.swift
//  Example
//
//  Created by Manthan Shah on 2019-06-26.
//  Copyright © 2019 Manthan Shah. All rights reserved.
//

import MSToolKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let helloLabel = UILabel(text: "Hello, World!", textAlignment: .center, textColor: .purple)
        
        let helloButton = UIButton(type: .system)
        helloButton.setTitle("Hello", for: .normal)
        helloButton.backgroundColor = .yellow
        helloButton.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [helloLabel, helloButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        
        view.addSubviews(redView, stackView)
        redView.fillSuperview()
        stackView.centerInSuperview()
    }
    
    @objc private func handleButton() {
        let alertController = UIAlertController(title: "Hello",
                                                message: "This CocoaPod is awesome!",
                                                preferredStyle: .alert,
                                                actionTitle: "Ok",
                                                actionStyle: .default)
        present(alertController, animated: true, completion: nil)
    }

}

