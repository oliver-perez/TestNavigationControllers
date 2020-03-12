//
//  ViewController.swift
//  testNav
//
//  Created by Oliver Jordy Pérez Escamilla on 11/03/20.
//  Copyright © 2020 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter: PresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: self)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        presenter?.buttonPressed()
    }
        
}

