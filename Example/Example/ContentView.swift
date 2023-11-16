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
                Task {
                    try await HVCameraExterior.sharedInstance.startCaptureSession(
                        settings: HVCameraSettings(),
                        info: CaptureJobInformation(
                            clientIdentifier: "DEADBEEF_DEAD_BEEF_DEAD_BEEFDEADBEEF",
                            uploadSecret: "DEADBEEF_DEAD_BEEF_DEAD_BEEFDEADBEEF",
                            jobID: 12345,
                            userEmail: "hello@example.com"
                        )
                    )
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
