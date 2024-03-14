//
//  TextFieldRowView.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import SwiftUI

struct TextFieldRowView: View {
    @ObservedObject var row: TextFieldRowViewModel
    
    var body: some View {
        let foregroundColor = row.styling.textColor.asColor()
        return TextField(row.placeholder, text: $row.value)
            .padding()
            .font(.body)
            .foregroundColor(foregroundColor)
            .background(row.styling.backgroundColor.asColor())
            .cornerRadius(CGFloat(row.styling.cornerRadius ?? 0))
    }
}

struct TextViewRowView_Previews: PreviewProvider {
    static let textColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let placeholderTextColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let backgroundColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let styling = TextFieldStylingModel(textColor: textColor,
                                               placeholderTextColor: placeholderTextColor,
                                               backgroundColor: backgroundColor,
                                               cornerRadius:  0.8)
    
    static let response = TextFieldRowModel(placeholder: "Username", styling: styling)
    static let row = TextFieldRowViewModel(response: response)
    
    static var previews: some View {
        TextFieldRowView(row: row)
    }
}
