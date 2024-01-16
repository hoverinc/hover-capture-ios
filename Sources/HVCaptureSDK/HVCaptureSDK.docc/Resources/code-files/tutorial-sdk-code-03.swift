import SwiftUI
import HVCaptureSDK

struct ContentView: View {

    var jobInfo: CaptureJobInformation
    var settings: HVCameraSettings

    init() {
        jobInfo = CaptureJobInformation(firstTimeUser: true, jobID: 42, clientIdentifier: "hello", userEmail: "goodbye", uploadSecret: "?", isTestJob: true)
        settings = HVCameraSettings()
    }

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        Button("Start Capture") {

        }
        .padding()
    }
}
