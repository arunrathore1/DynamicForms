//
//  ButtonViewModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

class ButtonViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published public var title: String
    @Published public var styling: StylingModel

    init(response: ButtonRowModel) {
        self.title = response.title
        self.styling = response.styling
    }
}
