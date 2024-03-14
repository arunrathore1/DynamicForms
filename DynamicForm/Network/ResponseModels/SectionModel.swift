//
//  SectionModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

public struct SectionModel: Decodable {
    let rows: [RowModel]
    let title: String
    
    enum CodingKey: String {
        case rows
        case title
    }
}
