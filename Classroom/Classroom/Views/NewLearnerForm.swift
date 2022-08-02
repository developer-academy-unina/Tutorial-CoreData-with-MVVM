//
//  NewLearnerForm.swift
//  Classroom
//
//  Created by Luca Palmese and Stefania Zinno for the Developer Academy on 12/01/22.
//
//

import CoreData
import SwiftUI

struct NewLearnerForm: View {
    
    @Binding var showModal: Bool
    
    @ObservedObject var viewModel: LearnerStore
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var age: Int?
    @State var shortBio: String = "Lorem Ipsum Bio so you don't have to copy and paste any long text"
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name: ", text: $name)
                    .disableAutocorrection(true)
                TextField("Surname: ", text: $surname)
                    .disableAutocorrection(true)
                TextField("Age: ", value: $age, format: .number)
                TextEditor(text: $shortBio)
            }
            .navigationBarTitle("Add Learner")
            .navigationBarItems(trailing: Button("Done", action: {
                showModal.toggle()
                if let age = age {
                    viewModel.addNewLearner(name: name, surname: surname, age: age, shortBio: shortBio)
                }
            }))
        }
    }
}


struct NewLearnerForm_Previews: PreviewProvider {
    static var previews: some View {
        NewLearnerForm(showModal: .constant(false), viewModel: LearnerStore())
        
    }
}
