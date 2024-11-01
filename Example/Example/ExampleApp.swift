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
    
    init() {
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
    func registerBackgroundTask() {
        // NOTE: can configure whether to upload on wifi only (`true`) vs. wifi + cellular (`false`)
        let uploadOnlyOnWiFi = true
        HVPartnerSDK.sharedInstance.initialize(parameters: .init(
            uploadOnWiFiOnly: uploadOnlyOnWiFi))
        
        // set up background tasks for scheduling HVCaptureSDK uploads, if applicable
        BGTaskScheduler.shared.register(forTaskWithIdentifier: "to.hover.uploads", using: nil) { task in
            self.uploadCaptureDataInBackground(task: task as! BGProcessingTask)
        }
        
        // schedule the background task to be executed
        let request = BGProcessingTaskRequest(identifier: "to.hover.uploads")
        request.requiresNetworkConnectivity = true
        request.requiresExternalPower = false
        try? BGTaskScheduler.shared.submit(request)
    }
    
    func uploadCaptureDataInBackground(task: BGProcessingTask) {
        let processingTask = Task {
            do {
                // set up HVPartnerSDK for background uploading (on wifi only)
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
