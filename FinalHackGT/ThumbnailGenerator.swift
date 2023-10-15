//
//  ARQuickLookView.swift
//  hackGt house improvement
//
//  Created by Uday Goyat on 10/14/23.
//

import QuickLookThumbnailing
import SwiftUI
import Combine
import UIKit

class ThumbnailGenerator: ObservableObject {
    @Published var thumbnailImage: Image?
    
    func generateThumbnail(newURL: URL, size: CGSize) {
        let scale = UIScreen.main.scale;
        let request = QLThumbnailGenerator.Request(fileAt: newURL, size: size, scale: scale, representationTypes: .all)
        
        let generator = QLThumbnailGenerator.shared
        generator.generateRepresentations(for: request) {
            (thumbnail, type, error) in DispatchQueue.main.async {
                if thumbnail == nil || error != nil {
                    print("Error generating thumbnail")
                    return
                } else {
                    self.thumbnailImage = Image(uiImage: thumbnail!.uiImage)
                }
            }
        }
        
    }
}
