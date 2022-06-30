//
//  FBTestApp.swift
//  FBTest
//
//  Created by Filip Bajaník on 29.06.2022.
//

import SwiftUI
import FirebaseCore
import FirebaseAnalytics
import FirebaseCrashlytics
import FirebaseMessaging

@main
struct FBTestApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .onAppear {
          FirebaseApp.configure()
        }
    }
  }
}
