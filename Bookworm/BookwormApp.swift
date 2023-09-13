//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Vitali Martsinovich on 2023-09-12.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
