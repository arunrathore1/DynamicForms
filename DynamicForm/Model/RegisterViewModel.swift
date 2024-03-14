//
//  RegisterViewModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

class RegisterViewModel: ObservableObject {
    @Published public var navigationTitle: String
    @Published public var sections: [SectionViewModel]
    
    init(response: ResponseModel) {
        self.navigationTitle = response.navigationTitle
        self.sections = response.sections.map { section -> SectionViewModel in
            return SectionViewModel(response: section)
        }
    }
}
