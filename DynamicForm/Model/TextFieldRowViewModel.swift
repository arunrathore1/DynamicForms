//
//  TextFieldRowViewModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

class TextFieldRowViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published public var placeholder: String
    @Published public var value: String = ""
    @Published public var styling: TextFieldStylingModel
    
    init(response: TextFieldRowModel) {
        self.placeholder = response.placeholder
        self.styling = response.styling
    }
}
