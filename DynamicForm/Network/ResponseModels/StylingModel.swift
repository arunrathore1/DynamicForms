//
//  StylingModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation

public struct TextFieldStylingModel: Decodable {
    let textColor: ColorModel
    let placeholderTextColor: ColorModel
    let backgroundColor: ColorModel
    let cornerRadius: Float?
    
    enum CodingKey: String {
        case textColor
        case backgroundColor
        case cornerRadius
    }
}

public struct StylingModel: Decodable {
    let textColor: ColorModel
    let backgroundColor: ColorModel
    let cornerRadius: Float?
    
    enum CodingKey: String {
        case textColor
        case backgroundColor
        case cornerRadius
    }
}

public struct ImageStylingModel: Decodable {
    let backgroundColor: ColorModel
    let cornerRadius: Float?

    enum CodingKey: String {
        case textColor
        case backgroundColor
        case cornerRadius
    }
}
