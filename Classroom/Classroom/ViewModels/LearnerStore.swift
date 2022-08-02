//
//  LearnerStore.swift
//  Classroom
//
//  Created by Luca Palmese for the Developer Academy on 15/01/22.
//

import Foundation
import CoreData


class LearnerStore: ObservableObject {
    
    @Published var learners: [Learner] = []
    
    init() {
        fetchLearners()
    }
    
    func fetchLearners() {
        let request = NSFetchRequest<Learner>(entityName: "Learner")
        
        do {
            learners = try PersistenceManager.shared.container.viewContext.fetch(request)
        } catch {
            print("Error fetching. \(error)")
        }
        
    }
    
    func addNewLearner(name: String, surname: String, age: Int, shortBio: String) {
        let newLearner = Learner(context: PersistenceManager.shared.container.viewContext)
        newLearner.id = UUID()
        newLearner.name = name
        newLearner.surname = surname
        newLearner.shortBio = shortBio
        newLearner.age = Int64(age)
        saveChanges()
    }
    
    func updateLearner(learner: Learner) {
        let currentSurname = learner.surname ?? ""
        let newSurname = currentSurname + "!"
        learner.surname = newSurname
        saveChanges()
    }
    
    func deleteLearner(learner: Learner) {
        PersistenceManager.shared.container.viewContext.delete(learner)
        saveChanges()
    }
    
    func deleteLearner(offsets: IndexSet) {
        offsets.map { learners[$0] }.forEach(PersistenceManager.shared.container.viewContext.delete)
        saveChanges()
    }
    
    func saveChanges() {
        PersistenceManager.shared.saveContext() { error in
            guard error == nil else {
                print("An error occurred while saving: \(error!)")
                return
            }
            self.fetchLearners()
        }
    }
}
