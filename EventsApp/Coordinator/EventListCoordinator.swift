//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by braindamage on 2022/2/27.
//

import Foundation
import UIKit
final class EventListCoordinator: Coodinator {
    
    
    private(set) var childCoordinator: [Coodinator] = []
    
    private let navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController()
        navigationController.setViewControllers([eventListViewController], animated: false)
    }
    
    
    
}
