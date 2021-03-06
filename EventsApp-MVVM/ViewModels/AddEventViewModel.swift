//
//  AddEventViewModel.swift
//  EventsApp-MVVM
//
//  Created by user on 01.05.2022.
//

import Foundation   

final class AddEventViewModel {
    
    let title = "Add"
    var onUpdate: () -> Void = {}
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
    }
    
    private(set) var cells: [AddEventViewModel.Cell] = []
    
    var coordinator: AddEventCoordinator?
    
    func viewDidLoad() {
        cells = [
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name", type: .text,
                                                      onCellUpdate: {})),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Date", subtitle: "", placeholder: "Select a date", type: .date,
                                                      onCellUpdate: { [weak self] in self?.onUpdate() })),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Background", subtitle: "", placeholder: "", type: .image,
                                                      onCellUpdate: { [weak self] in self?.onUpdate() }))
        ]
        onUpdate()
    }
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
    func numberOfRows() -> Int {
        return cells.count
    }
    
    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
    
    func tappedDone() {
        
    }
    
    func updateCell(indexPath: IndexPath, subtitle: String) {
        switch cells[indexPath.row] {
        case .titleSubtitle(let titleSubtitleCellViewModel):
            titleSubtitleCellViewModel.update(subtitle)
        }
    }
}

