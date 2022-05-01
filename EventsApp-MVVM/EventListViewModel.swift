//
//  EventListViewModel.swift
//  EventsApp-MVVM
//
//  Created by user on 01.05.2022.
//

import Foundation

final class EventListViewModel {
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
}
