//
//  ThirdViewController.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    weak var thirdViewControllerCoordinator: ThirdViewControllerCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third VC"
        view.backgroundColor = .systemBlue
    }
    
}
