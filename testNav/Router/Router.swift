//
//  Router.swift
//  testNav
//
//  Created by Oliver Jordy Pérez Escamilla on 11/03/20.
//  Copyright © 2020 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

final class Router: RouterProtocol {
    
    func pushToViewController3(from view: UIViewController) {
        guard let navigationController = view.navigationController else { return }
        let module2 = buildViewController2() as? ViewController2
        let module3 = buildViewController3() as? ViewController3
        module3?.delegate = module2?.config1
        
        guard let view2 = module2, let view3 = module3 else { return }
        let viewControllers = navigationController.viewControllers + [view2, view3]
        navigationController.setViewControllers(viewControllers, animated: true)
    }
    
    // MARK: - Wireframing simulation
    private func buildViewController2() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController2 = storyboard.instantiateViewController(withIdentifier: "ViewController2")
        return viewController2
    }
    
    private func buildViewController3() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController3 = storyboard.instantiateViewController(withIdentifier: "ViewController3")
        return viewController3
    }
    
    
}
