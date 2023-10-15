//
//  ScanData.swift
//  learningiOS
//
//  Created by Uday Goyat on 10/14/23.
//

import Foundation
import SwiftData

@Model
final class ScanData {
    var id: String
    var title: String
    var descr: String
    var url: URL
    var creation: Date
    var designerBuy: Bool
    var completed: Bool
    
    init(title: String, descr: String, url: URL, designerBuy: Bool) {
        self.id = UUID().uuidString
        self.title = ""
        self.descr = ""
        self.url = url
        self.designerBuy = designerBuy
        self.creation = .now
        self.completed = false
    }
}

