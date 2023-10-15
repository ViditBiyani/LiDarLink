//
//  CameraView.swift
//  learningiOS
//
//  Created by Uday Goyat on 10/14/23.
//

import Foundation
import SwiftUI
import RoomPlan

struct RoomCaptureViewRep : UIViewRepresentable
{
    func makeUIView(context: Context) -> some UIView {
        RoomCaptureController.instance.roomCaptureView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

struct ActivityViewControllerRep: UIViewControllerRepresentable {
    var items: [Any]
    var activities: [UIActivity]? = nil
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewControllerRep>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: items, applicationActivities: activities)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityViewControllerRep>) {}
}

struct ScanningView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @Binding var scanUrl: URL?
    @Binding var scanFinished: Bool
    
    @StateObject var captureController = RoomCaptureController.instance
    
    var body: some View {
        ZStack(alignment: .top) {
            RoomCaptureViewRep()
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
                .frame(maxHeight: .infinity)
                .navigationBarBackButtonHidden(true)
                .onAppear() {
                    captureController.showExportButton = false
                    captureController.startSession()
                }
            
            HStack {
                Button("Cancel") {
                    captureController.stopSession()
                    dismiss()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                Button("Done") {
                    captureController.stopSession()
                    captureController.showExportButton = true
                }
                .opacity(captureController.showExportButton ? 0 : 1)
                .cornerRadius(10)
            }
            .padding()
            
            Button(action: {
                captureController.export()
                scanUrl = captureController.exportUrl!
                scanFinished = true
                dismiss()
            }, label: {
                Text("Export").font(.title2)
            }).buttonStyle(.borderedProminent).cornerRadius(40).opacity(captureController.showExportButton ? 1 : 0).padding().sheet(isPresented: $captureController.showShareSheet, content:{
                ActivityViewControllerRep(items: [captureController.exportUrl!])
            })
        }.navigationBarBackButtonHidden(true);
    }
}
