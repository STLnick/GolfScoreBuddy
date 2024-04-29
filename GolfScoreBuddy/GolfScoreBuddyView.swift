//
//  ContentView.swift
//  Golf Score Buddy
//
//  Created by Nick Ray on 4/25/24.
//

import SwiftUI

struct GolfScoreBuddyView: View {
    @State var currentView = "home"
    
    var body: some View {
        return Group {
            ZStack {
                Color(white: 0.85)
                    .ignoresSafeArea()
                
                if currentView == "home" {
                    HomeView(currentView: $currentView)
                        .transition(.symbolEffect)
                } else {
                    ScorecardView(currentView: $currentView)
                        .transition(.blurReplace)
                }
            }
        }
    }
}

#Preview {
    GolfScoreBuddyView()
}
