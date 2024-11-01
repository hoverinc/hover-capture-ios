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
                    let jobInfo = CaptureJobInformation(
                        firstTimeUser: true,
                        identifier: JobIdentifier(
                            jobID: 123
                        ),
                        uploadSecret: "DEADBEEF_DEAD_BEEF_DEAD_BEEFDEADBEEF")
                    let sessionSettings = HVCameraSettings()
                    
                    do {
                        _ = try await HVPartnerSDK.sharedInstance.startCaptureSession(
                            settings: sessionSettings,
                            info: jobInfo)
                        try await HVPartnerSDK.sharedInstance.startCaptureFlow()
                    } catch let error as HVSessionError {
                        print("Known capture flow error: \(error.localizedDescription)")
                    } catch {
                        print("Unknown Capture Flow Error: \(error.localizedDescription)")
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
