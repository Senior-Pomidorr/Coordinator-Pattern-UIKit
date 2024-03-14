//
//  ViewController.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class MainViewController: UIViewController {
    
    weak var mainViewControllerCoordinator: MainViewControllerCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main VC"
        view.backgroundColor = .red
        view.addSubview(firstButton)
        view.addSubview(secondButton)
    }
    
    private lazy var firstButton: UIButton = {
        let button = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: 180, height: 60)))
        button.setTitle("Push to SecondVC", for: .normal)
        button.backgroundColor = .black
        button.center = view.center
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(pushToSecondVC), for: .touchUpInside)
        return button
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: firstButton.frame.maxY + 20, width: 180, height: 60))
        button.setTitle("Push to ThirdVC", for: .normal)
        button.backgroundColor = .black
        button.center.x = view.center.x
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(pushToThirdVC), for: .touchUpInside)
        return button
    }()
    
    @objc func pushToSecondVC() {
        let mainViewControllerCoordinator = mainViewControllerCoordinator
        mainViewControllerCoordinator?.runSecondVC()
    }
    
    @objc func pushToThirdVC() {
        let mainViewControllerCoordinator = mainViewControllerCoordinator
        mainViewControllerCoordinator?.runThirdVC()
    }
}

