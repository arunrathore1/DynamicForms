//
//  SectionViewModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

class SectionViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    public let title: String
    @Published public var rows: [RowViewModel]
    
    init(response: SectionModel) {
        self.title = response.title
        self.rows = response.rows.map { row -> RowViewModel in
            RowViewModel.init(response: row)
        }
    }
}
