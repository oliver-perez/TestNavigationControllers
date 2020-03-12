//
//  File.swift
//  testNav
//
//  Created by Oliver Jordy Pérez Escamilla on 11/03/20.
//  Copyright © 2020 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

protocol RouterProtocol {
    func pushToViewController3(from: UIViewController)
}

protocol PresenterProtocol {
    var view: UIViewController? { get set }
    var router: RouterProtocol? { get set }
    func buttonPressed()
}
