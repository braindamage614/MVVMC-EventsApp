//
//  AppCoordinator.swift
//  EventsApp
//
//  Created by braindamage on 2022/2/27.
//

import Foundation
import UIKit


protocol Coodinator {
    var childCoordinator: [Coodinator] {get} //遵守协议的元素
    func start()
}

final class AppCoordinator: Coodinator {
    
    private(set) var childCoordinator: [Coodinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        
    }
    
    func start() {
        let navigationController = UINavigationController()
        let eventListCoordinator = EventListCoordinator(navigationController)
        childCoordinator.append(eventListCoordinator) //保持强引用
        eventListCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
