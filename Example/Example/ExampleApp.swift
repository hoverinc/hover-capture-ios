//
//  ExampleApp.swift
//  Example
//
//  Created by Chris Martin on 11/3/23.
//

import SwiftUI
import HVCaptureSDK
import BackgroundTasks

@main
struct ExampleApp: App {
    
    let uploadTaskIdentifier = "to.hover.uploads"
    
    init() {
        // NOTE: to allow the SDK to handle its own background uploads, uncomment this line
        // and comment out the `registerBackgroundTask` line.
        //HVPartnerSDK.sharedInstance.registerForBackgroundJobs()
        HVPartnerSDK.sharedInstance.initialize()
        
        registerBackgroundTask()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension ExampleApp {
    /// Example of how we can manually trigger the SDK to perform background uploads
    func registerBackgroundTask() {
        // set up background tasks for scheduling HVCaptureSDK uploads, if applicable
        BGTaskScheduler.shared.register(forTaskWithIdentifier: uploadTaskIdentifier, using: nil) { task in
            self.uploadCaptureDataInBackground(task: task as! BGProcessingTask)
        }
        
        // schedule the background task to be executed
        let request = BGProcessingTaskRequest(identifier: uploadTaskIdentifier)
        request.requiresNetworkConnectivity = true
        request.requiresExternalPower = false
        try? BGTaskScheduler.shared.submit(request)
    }
    
    func uploadCaptureDataInBackground(task: BGProcessingTask) {
        let processingTask = Task {
            do {
                // set up HVPartnerSDK for background uploading (on wifi only)
                // NOTE: can configure whether to upload on wifi only (`true`) vs. wifi + cellular (`false`)
                try await HVPartnerSDK.sharedInstance.initializeForBackground(parameters: .init(
                    uploadOnWiFiOnly: true))
                task.setTaskCompleted(success: true)
            } catch {
                task.setTaskCompleted(success: false)
            }
        }
        
        task.expirationHandler = {
            processingTask.cancel()
        }
    }
}
