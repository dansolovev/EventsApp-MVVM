//
//  TitleSubtitleCellViewModel.swift
//  EventsApp-MVVM
//
//  Created by user on 02.05.2022.
//

import Foundation

final class TitleSubtitleCellViewModel {
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
    
    func update(_ subtitle: String) {
        self.subtitle = subtitle
    }
}