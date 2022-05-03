//
//  UIViewController+Extensions.swift
//  EventsApp-MVVM
//
//  Created by user on 01.05.2022.
//

import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
    }
}
