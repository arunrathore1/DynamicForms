//
//  URLImageViewModel.swift
//  DynamicForm
//
//  Created by Arun Rathore on 13/03/24.


import Foundation
import UIKit

class URLImageViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published var image: UIImage?
    @Published public var imageURL: URL
    @Published public var styling: ImageStylingModel

    init(response: ImageRowModel) {
        self.imageURL = response.imageURL
        self.styling = response.styling
        loadImageFromURL()
    }

    func loadImageFromURL() {
        let task = URLSession.shared.dataTask(with: imageURL,
                                              completionHandler: parseImageResponse)
        task.resume()
    }

    func parseImageResponse(data: Data?, response: URLResponse?, error: Error?) {
           guard error == nil else {
               print("Request error: \(error!)")
               return
           }
           guard let responseData = data else {
               print("No response data retrieved")
               return
           }

           DispatchQueue.main.async {
               guard let loadedImage = UIImage(data: responseData) else {
                   return
               }
               self.image = loadedImage
           }
       }
}
