//
//  ScoreCardView.swift
//  Golf Score Buddy
//
//  Created by Nick Ray on 4/25/24.
//

import SwiftUI

struct ScorecardView: View {
    @Binding var currentView: String
    @State var pars: [Int] = Array(repeating: 0, count: 18)
    @State var playerOne: [Int] = Array(repeating: 0, count: 18)
    @State var playerTwo: [Int] = Array(repeating: 0, count: 18)
    
    var body: some View {
        VStack {
            Text("Scorecard")
                .font(.system(.largeTitle, design: .rounded))
            Spacer()
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 2) {
                        ForEach((1...19), id: \.self) {
                            Text("\($0)")
                                .foregroundStyle(.white)
                                .frame(width: Constants.TILE_WIDTH, height: 25)
                                .background(.green)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 2) {
                        ForEach((1...18), id: \.self) { hole in
                            ScorecardTile(id: "par", hole: hole, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8))
                        }
                        ScorecardTile(id: "par", hole: 19, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8))
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 2) {
                        ForEach((1...18), id: \.self) { hole in
                            ScorecardTile(id: "p1", hole: hole, bgColor: .clear)
                        }
                        ScorecardTile(id: "p1", hole: 19, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8))
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 2) {
                        ForEach((1...18), id: \.self) { hole in
                            ScorecardTile(id: "p2", hole: hole, bgColor: .clear)
                        }
                        ScorecardTile(id: "p2", hole: 19, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8))
                    }
                    .padding(.horizontal)
                }
                .frame(height:200)
            }
            Spacer()
            Button("Home") {
                withAnimation {
                    currentView = "home"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
            .fontWeight(.bold)
            .shadow(color: .gray, radius: 2, x: 0, y: 2)
            Spacer()
        }
        .padding()
    }
    
    func renderTileTextField() {
    
    }
}

#Preview {
    struct Preview: View {
        @State var currentView = "home"
        @State var pars: [Int] = []
        @State var playerOne: [Int] = []
        @State var playerTwo: [Int] = []
        
        var body: some View {
            ScorecardView(currentView: $currentView, pars: pars, playerOne: playerOne, playerTwo: playerTwo)
        }
    }

    return Preview()
}
