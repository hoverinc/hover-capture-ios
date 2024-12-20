import SwiftUI
import HVCaptureSDK

struct ContentView: View {

    var jobInfo: CaptureJobInformation
    var settings: HVCameraSettings

    @State var captureTask: Task<Void, Never>?

    init() {
        let jobIdentifier = JobIdentifier(jobID: 42)
        jobInfo = CaptureJobInformation(
            firstTimeUser: true,
            identifier: jobIdentifier,
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
            Task {
                do {
                    try await HVPartnerSDK.sharedInstance.startCaptureSession(settings: settings, info: jobInfo)
                    try await HVPartnerSDK.sharedInstance.startCaptureFlow()
                } catch let error as HVSessionError {
                    // maybe handle our known errors here
                    switch error.kind {
                    case .UserCancelled:
                        print("User cancelled capture flow")
                    case .FilesystemUnavailable:
                        print("File system is not writable?")
                    case .SessionCreationFailed:
                        print("Could not create capture session")
                    case .ViewControllerMissing:
                        print("View Controller absent")
                    case .Unknown(let errorMsg):
                        print("unknown error \(errorMsg)")
                    @unknown default:
                        fatalError("Unknown error")
                    }
                    print("Known capture flow error: \(error.localizedDescription)")
                } catch {
                    // unknown error, who knows what to do
                    print("Unknown Capture Flow Error: \(error.localizedDescription)")
                }
                captureSessionCompleted()
            }
        }
        .padding()
    }

    func captureSessionCompleted() {
        print("all done")
    }

    func cancelCaptureSession() {
        captureTask?.cancel()
    }
}
