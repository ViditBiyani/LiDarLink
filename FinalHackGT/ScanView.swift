//
//  ScanView.swift
//  learningiOS
//
//  Created by Uday Goyat on 10/13/23.
//

import Foundation

import SwiftUI
import SwiftData
import ARKit
import SceneKit.ModelIO

struct ScanView: View {
    @Environment(\.modelContext) private var contextModel
    
    @ObservedObject var thumbnailGenerator = ThumbnailGenerator()
    
    @State private var title = ""
    @State private var descr = ""
    @State private var budget = "0"
    @State private var designerBuy = false
    @State var scanURL: URL? = URL(string: "")
    @State var scanFinished = false
    
    
    @State private var potentialID = UUID().uuidString
    let scanDataImage = Image(systemName: "photo")
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Scan Description")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $descr, axis: .vertical)
                }
                Section(header: Text("Budget")){
                    TextField("Budget", text: $budget)
                        .keyboardType(.numberPad)
                    Toggle("Buy from designer", isOn: $designerBuy)
                }
                
                Section(header: Text("Scan")){
                    VStack {
                        Text("Scan the room by pointing the camera at all surfaces. Model export supports usdz and obj format.")
                        Spacer().frame(height: 20)
                        NavigationLink(destination: ScanningView(scanUrl: $scanURL, scanFinished: $scanFinished)) {
                            Text("Scan")
                        }
                            .buttonStyle(.borderedProminent)
                            .cornerRadius(40)
                            .font(.headline)
                        
                    }
                    
                }
                
                if (scanFinished) {
                    let mdlAsset = MDLAsset(url: scanURL!)
                    let scene = SCNScene(mdlAsset: mdlAsset)
                    SceneView(scene: scene)
                        .frame(height: 500)
                }
                
                
                Button("Submit Scan", action: submitScan)
            }
            .navigationTitle("Scan")
        }
    }
    
    
    func submitScan() {
//        do {
//            try Amplify.add(plugin: AWSS3StoragePlugin())
//            try Amplify.configure()
//            print("Amplify initialized")
//        } catch {
//            print("Failed to configure Amplify \(error)")
//        }
//        
//        let currentKey = UUID().uuidString
//        
//        let uploadTask = Amplify.Storage.uploadFile(
//            key: currentKey,
//            local: scanURL!
//        )
//        
//        Task {
//            for await progress in await uploadTask.progress {
//                print("Progress: \(progress)")
//            }
//        }

//        let newFinalScan = ScanData(title: self.title, descr: self.descr, url: self.scanURL!, designerBuy: self.designerBuy)
        
//        do {
//            try contextModel.save()
//        } catch {
//            print("The context model failed to save")
//        }
    }
}


