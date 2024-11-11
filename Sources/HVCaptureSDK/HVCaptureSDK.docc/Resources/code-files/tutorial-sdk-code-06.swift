import Combine
import HVCaptureSDK
import SwiftUI

struct ContentView: View {

    var jobInfo: CaptureJobInformation
    var settings: HVCameraSettings

    @State var captureTask: Task<Void, Never>?
    @State private var jobCancellables = [JobIdentifier: AnyCancellable]()
    @State private var jobStateHistory = [JobIdentifier: [JobStatus]]()

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
                    let initialStatus = try await HVPartnerSDK.sharedInstance.startCaptureSession(settings: settings, info: jobInfo)
                    jobStateHistory[jobInfo.identifier]?.append(initialStatus)
                    // check if we have a listener for the job already, so we don't make duplicate listeners each time the view is created
                    if jobCancellables[jobInfo.identifier] == nil {
                        let cancellable = HVPartnerSDK.sharedInstance.getJobStateObservable(for: jobInfo.identifier).sink(receiveValue: { (jobState: JobStatus) in
                            if case let .uploadProgress(_, uploadStatus) = jobState {
                                print("Job@State: \(jobState) --> File@State: \(String(describing: uploadStatus))")
                            } else if case let .error(_, error) = jobState {
                                print("Job@State: \(jobState) --> Error: \(error.localizedDescription)")
                            } else {
                                print("Job@State: \(jobState)")
                            }
                            jobStateHistory[jobInfo.identifier]?.append(jobState)
                        })
                        jobCancellables[jobInfo.identifier] = cancellable
                    }

                    try await HVPartnerSDK.sharedInstance.startCaptureFlow()
                } catch let error as HVSessionError {
                    // maybe handle our known errors here
                    switch error.kind {
                    case .userCancelled:
                        print("User cancelled capture flow")
                    case .filesystemUnavailable:
                        print("File system is not writable?")
                    case .sessionCreationFailed:
                        print("Could not create capture session")
                    case .viewControllerMissing:
                        print("View Controller absent")
                    case .unknown(let errorMsg):
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
