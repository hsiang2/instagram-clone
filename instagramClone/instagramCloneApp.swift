//
//  instagramCloneApp.swift
//  instagramClone
//
//  Created by 蔡相襄 on 2023/2/5.
//

import SwiftUI
import Firebase

@main
struct instagramCloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
