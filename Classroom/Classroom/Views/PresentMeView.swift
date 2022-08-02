//
//  StudentDetail.swift
//  Classroom
//
//  Created by Stefania Zinno
//

import SwiftUI


struct PresentMeView: View {
    
    var learner: Learner
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            HStack {
                Spacer()
                Image("stefania_zinno")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 8)
                            .foregroundColor(.gray)
                    )
                    .shadow(radius: 10)
                    .padding()
                Spacer()
            }
            if let name = learner.name, let surname = learner.surname{
                Text(name + " " + surname)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            if let age = learner.age{
                Text("Age is \(age)")
            }
            if let shortBio = learner.shortBio{
                Text(shortBio)
            }
            Spacer()
        }
        .padding()
    }
}



