//
//  DataController.swift
//  Bookworm
//
//  Created by Vitali Martsinovich on 2023-09-12.
//
import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
