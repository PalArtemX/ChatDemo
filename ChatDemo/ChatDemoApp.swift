//
//  ChatDemoApp.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI
import Firebase

@main
struct ChatDemoApp: App {
    
    @StateObject var messagesVM = MessagesViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(messagesVM)
        }
    }
}
