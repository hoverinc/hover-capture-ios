//
//  ContentView.swift
//  Example
//
//  Created by Chris Martin on 11/3/23.
//

import SwiftUI
import HVCaptureSDK

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Start Flow") {
                
                let jobIdentifier = JobIdentifier(jobID: 42)
                let jobInfo = CaptureJobInformation(
                    firstTimeUser: true,
                    identifier: jobIdentifier,
                    uploadSecret: "?")
                
                Task {
                    
                    try await HVCameraExterior.sharedInstance.startCaptureSession(
                        settings: HVCameraSettings(),
                        info: jobInfo
                    )
                    try await HVCameraExterior.sharedInstance.startCaptureFlow()
                    
                }
            }
        }
        .padding()
        .onAppear {
            HVCameraExterior.sharedInstance.initialize()
        }
    }
}

#Preview {
    ContentView()
}
