//
//  SecondViewController.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var secondViewControllerCoordinator: SecondViewControllerCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second VC"
        view.backgroundColor = .cyan
    }
    
}
