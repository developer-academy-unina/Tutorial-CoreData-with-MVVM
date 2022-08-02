//
//  Form.swift
//  Classroom
//
//  Created by Stefania Zinno for the Developer Academy on 12/01/22.
//
//


import SwiftUI

struct NewLearnerForm: View {
    @State var name: String = ""
    @State var surname: String = ""
    @State var age: String = ""
    
    var body: some View {
        NavigationView {
                   Form {
                       TextField("Name: ", text: $name)
                       TextField("Surname: ", text: $surname)
                       TextField("Age", text: $age)
                   }
                   .navigationBarTitle("New Learner")
               }
           }
    }


struct Form_Previews: PreviewProvider {
    static var previews: some View {
        NewLearnerForm()
    }
}
