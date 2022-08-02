//
//  Persistence.swift
//  Classroom
//
//  Created by Luca Palmese and Stefania Zinno for the Developer Academy on 12/01/22.
//
//


import Foundation
import CoreData
import Combine

struct PersistenceManager {
    
    static let shared = PersistenceManager()
    
    static var preview: PersistenceManager = {
        let result = PersistenceManager(inMemory: true)
        let viewContext = result.container.viewContext
        return result
    }()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Classroom")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    func saveContext(completionHandler: @escaping (Error?) -> Void) {
        if PersistenceManager.shared.container.viewContext.hasChanges {
            do {
                try PersistenceManager.shared.container.viewContext.save()
                completionHandler(nil)
            } catch {
                completionHandler(error)
            }
        }
    }
}
