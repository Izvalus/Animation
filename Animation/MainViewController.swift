//
//  MainViewController.swift
//  Animation
//
//  Created by Роман Мироненко on 24.08.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    let pushButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        view.addSubview(pushButton)
        view.backgroundColor = .yellow
        
        title = "Приложения"
        pushButton.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
        
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            pushButton.widthAnchor.constraint(equalToConstant: 200),
            pushButton.heightAnchor.constraint(equalToConstant: 150),
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc
    func pushButtonAction() {
        let navigation = UINavigationController(rootViewController: ExampleController())
        navigation.navigationBar.prefersLargeTitles = true
        navigationController?.pushViewController(ExampleController(), animated: true)
    }
}

