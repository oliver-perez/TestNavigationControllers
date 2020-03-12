//
//  Presenter.swift
//  testNav
//
//  Created by Oliver Jordy Pérez Escamilla on 11/03/20.
//  Copyright © 2020 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

final class Presenter: PresenterProtocol {
    
    weak var view: UIViewController?
    var router: RouterProtocol? = Router()
    
    init(view: UIViewController) {
        self.view = view
    }

    func buttonPressed() {
        guard let viewController = view  else { return }
        router?.pushToViewController3(from: viewController)
    }
}
