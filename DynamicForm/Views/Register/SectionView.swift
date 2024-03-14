//
//  SectionView.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import SwiftUI

struct SectionView: View {
    @ObservedObject var section: SectionViewModel
    
    var body: some View {
        Section(header: Text(section.title)) {
            ForEach(section.rows) { row in
                self.childView(for: row)
            }
        }
    }

    func childView(for row: RowViewModel) -> AnyView {
        switch row {
        case .textField(let viewModel):
            return AnyView(TextFieldRowView(row: viewModel))
        case .image(let viewModel):
            return AnyView(URLImageViewRowView(row: viewModel))
        case .button(let viewModel):
            return AnyView(ButtonRowView(row: viewModel))
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static let textColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let placeholderTextColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let backgroundColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let textViewStyling = TextFieldStylingModel(textColor: textColor,
                                               placeholderTextColor: placeholderTextColor,
                                               backgroundColor: backgroundColor,
                                               cornerRadius:  0.8)
    
    static let usernameRow = RowModel.textField(TextFieldRowModel(placeholder: "Username",
                                                                  styling: textViewStyling))
    static let firstnameRow = RowModel.textField(TextFieldRowModel(placeholder: "Firstname",
                                                                   styling: textViewStyling))
    static let lastnameRow = RowModel.textField(TextFieldRowModel(placeholder: "Lastname",
                                                                  styling: textViewStyling))
    static let personalSection = SectionModel(rows: [usernameRow, firstnameRow, lastnameRow],
                                      title: "Personal Information")
    static let section = SectionViewModel(response: personalSection)
    
    static var previews: some View {
        SectionView(section: section)
    }
}
