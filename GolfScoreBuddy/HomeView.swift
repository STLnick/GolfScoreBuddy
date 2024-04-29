//
//  HomeView.swift
//  Golf Score Buddy
//
//  Created by Nick Ray on 4/25/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var currentView: String
    
    var body: some View {
        VStack {
            Text("Golf Score Buddy")
                .font(.system(.largeTitle, design: .rounded))
            Spacer()
            VStack{
                Circle()
                    .fill(.green)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.golf")
                            .font(.system(size: 144))
                            .foregroundStyle(.white)
                    )
                Text("Track your scores on the greens!")
                    .font(.system(.title3, design: .rounded))
                    .padding()
                Button("Start game") {
                    withAnimation {
                        currentView = "dashboard"
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .fontWeight(.bold)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    struct Preview: View {
        @State var currentView = "home"
        var body: some View {
            HomeView(currentView: $currentView)
        }
    }

    return Preview()
}
