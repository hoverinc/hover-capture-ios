import SwiftUI
import HVCaptureSDK

struct ContentView: View {

    var jobInfo: CaptureJobInformation
    var settings: HVCameraSettings

    init() {
        let jobIdentifier = JobIdentifier(jobID: 42)
        jobInfo = CaptureJobInformation(
            firstTimeUser: true,
            identifier: jobIdentifier,
            clientIdentifier: UUID().uuidString,
            uploadSecret: "?")
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
