//
//  ContentView.swift
//  Classroom
//
//  Created by Luca Palmese and Stefania Zinno for the Developer Academy on 12/01/22.
//

import SwiftUI

struct LearnerList: View {
    
    @State var showModal: Bool = false
    
    @StateObject private var viewModel = LearnerStore()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.learners) { learner in
                    NavigationLink(destination: PresentMeView(learner: learner)) {
                        HStack {
                            Image("stefania_zinno")
                                .resizable()
                                .frame(width: 50, height: 50)
                            if let name = learner.name, let surname = learner.surname {
                                Text("\(name) \(surname)")
                            }
                            Spacer()
                        }
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button(role: .destructive) {
                            withAnimation {
                                viewModel.deleteLearner(learner: learner)
                            }
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                        Button { viewModel.updateLearner(learner: learner) } label: {
                            Label("Edit", systemImage: "pencil")
                        }
                        .tint(.blue)
                    }
                }
                .onDelete(perform: viewModel.deleteLearner)
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem {
                    Button("Add") {
                        showModal.toggle()
                    }
                    .sheet(isPresented: $showModal, content: {
                        NewLearnerForm(showModal: $showModal, viewModel: viewModel)
                    })
                }
            }
            .navigationTitle("Learners")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerList()
    }
}
