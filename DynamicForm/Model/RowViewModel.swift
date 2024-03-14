//
//  RowViewModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

enum RowViewModel: Identifiable {
    var id: ObjectIdentifier {
        switch self {
        case .textField(let model):
            return model.id
        case .image(let model):
            return model.id
        case .button(let model):
            return model.id
        }
    }

    case textField(TextFieldRowViewModel)
    case image(URLImageViewModel)
    case button(ButtonViewModel)

    init(response: RowModel) {
        switch response {
        case .textField(let model):
            let viewModel = TextFieldRowViewModel(response: model)
            self = .textField(viewModel)
        case .image(let model):
            let viewModel = URLImageViewModel(response: model)
            self = .image(viewModel)
        case .button(let model):
            let viewModel = ButtonViewModel(response: model)
            self = .button(viewModel)
        }
    }
}
