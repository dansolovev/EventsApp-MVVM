//
//  AppCoordinator.swift
//  EventsApp-MVVM
//
//  Created by user on 29.04.2022.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        
        let eventListCootdinator = EventListCoordinator(navigationController: navigationController)
        
        childCoordinators.append(eventListCootdinator)
        
        eventListCootdinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    
}
