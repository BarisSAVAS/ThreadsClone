//
//  ThreadsCloneApp.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 21.08.2023.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    @main
    struct ThreadsCloneApp: App {
        @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
        var body: some Scene {
            WindowGroup {
                ThreadsTabView()
            }
        }
    }
}
