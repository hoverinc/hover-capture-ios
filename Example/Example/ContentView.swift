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
                            firstTimeUser: true,
                            jobID: 12345,
                            clientIdentifier: "DEADBEEF_DEAD_BEEF_DEAD_BEEFDEADBEEF",
                            uploadSecret: "DEADBEEF_DEAD_BEEF_DEAD_BEEFDEADBEEF"
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
