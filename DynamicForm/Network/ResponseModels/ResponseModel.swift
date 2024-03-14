//
//  ResponseModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

public struct ResponseModel: Decodable {
    let navigationTitle: String
    let sections: [SectionModel]
    
    enum CodingKey: String {
        case navigationTitle
        case sections
    }
}
