//
//  ScoreCardView.swift
//  Golf Score Buddy
//
//  Created by Nick Ray on 4/25/24.
//

import SwiftUI

struct ScorecardView: View {
    enum Field: Hashable {
        // TODO: Make not terrible
        case par_1, par_2, par_3, par_4, par_5, par_6, par_7, par_8, par_9, par_10, par_11, par_12, par_13, par_14, par_15, par_16, par_17, par_18,
        p1_1, p1_2, p1_3, p1_4, p1_5, p1_6, p1_7, p1_8, p1_9, p1_10, p1_11, p1_12, p1_13, p1_14, p1_15, p1_16, p1_17, p1_18,
        p2_1, p2_2, p2_3, p2_4, p2_5, p2_6, p2_7, p2_8, p2_9, p2_10, p2_11, p2_12, p2_13, p2_14, p2_15, p2_16, p2_17, p2_18
    }
    
    let parInputColor = Color(red: 0.70, green: 0.69, blue: 0.68)
    let playerInputColor = Color(red: 0.96, green: 0.95, blue: 0.94)
    
    @Binding var currentView: String
    @State var pars: [Int] = Array(repeating: 0, count: 18)
    @State var playerOne: [Int] = Array(repeating: 0, count: 18)
    @State var playerTwo: [Int] = Array(repeating: 0, count: 18)
    @FocusState var focusedField: Field?
    
    var body: some View {
        VStack {
            Text("Scorecard")
                .font(.system(.largeTitle, design: .rounded))
            Spacer()
            VStack {
                ScrollView(.horizontal) {
                    // Hole Number
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
                   
                    // Par line
                    HStack(spacing: 2) {
                        ScorecardTile(hole: 1, bgColor: parInputColor, field: .par_1, focusedField: _focusedField)
                            .onAppear {
                                self.focusedField = .par_1
                            }
                        ScorecardTile(hole: 2, bgColor: parInputColor, field: .par_2, focusedField: _focusedField)
                        ScorecardTile(hole: 3, bgColor: parInputColor, field: .par_3, focusedField: _focusedField)
                        ScorecardTile(hole: 4, bgColor: parInputColor, field: .par_4, focusedField: _focusedField)
                        ScorecardTile(hole: 5, bgColor: parInputColor, field: .par_5, focusedField: _focusedField)
                        ScorecardTile(hole: 6, bgColor: parInputColor, field: .par_6, focusedField: _focusedField)
                        ScorecardTile(hole: 7, bgColor: parInputColor, field: .par_7, focusedField: _focusedField)
                        ScorecardTile(hole: 8, bgColor: parInputColor, field: .par_8, focusedField: _focusedField)
                        ScorecardTile(hole: 9, bgColor: parInputColor, field: .par_9, focusedField: _focusedField)
                        ScorecardTile(hole: 10, bgColor: parInputColor, field: .par_10, focusedField: _focusedField)
                        ScorecardTile(hole: 11, bgColor: parInputColor, field: .par_11, focusedField: _focusedField)
                        ScorecardTile(hole: 12, bgColor: parInputColor, field: .par_12, focusedField: _focusedField)
                        ScorecardTile(hole: 13, bgColor: parInputColor, field: .par_13, focusedField: _focusedField)
                        ScorecardTile(hole: 14, bgColor: parInputColor, field: .par_14, focusedField: _focusedField)
                        ScorecardTile(hole: 15, bgColor: parInputColor, field: .par_15, focusedField: _focusedField)
                        ScorecardTile(hole: 16, bgColor: parInputColor, field: .par_16, focusedField: _focusedField)
                        ScorecardTile(hole: 17, bgColor: parInputColor, field: .par_17, focusedField: _focusedField)
                        ScorecardTile(hole: 18, bgColor: parInputColor, field: .par_18, focusedField: _focusedField)
                        
                        // Total Tile
                        ScorecardTile(hole: 19, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8), field: nil, focusedField: _focusedField)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                    
                    // Player 1
                    HStack(spacing: 2) {
                        ScorecardTile(hole: 1, bgColor: playerInputColor, field: .p1_1, focusedField: _focusedField)
                        ScorecardTile(hole: 2, bgColor: playerInputColor, field: .p1_2, focusedField: _focusedField)
                        ScorecardTile(hole: 3, bgColor: playerInputColor, field: .p1_3, focusedField: _focusedField)
                        ScorecardTile(hole: 4, bgColor: playerInputColor, field: .p1_4, focusedField: _focusedField)
                        ScorecardTile(hole: 5, bgColor: playerInputColor, field: .p1_5, focusedField: _focusedField)
                        ScorecardTile(hole: 6, bgColor: playerInputColor, field: .p1_6, focusedField: _focusedField)
                        ScorecardTile(hole: 7, bgColor: playerInputColor, field: .p1_7, focusedField: _focusedField)
                        ScorecardTile(hole: 8, bgColor: playerInputColor, field: .p1_8, focusedField: _focusedField)
                        ScorecardTile(hole: 9, bgColor: playerInputColor, field: .p1_9, focusedField: _focusedField)
                        ScorecardTile(hole: 10, bgColor: playerInputColor, field: .p1_10, focusedField: _focusedField)
                        ScorecardTile(hole: 11, bgColor: playerInputColor, field: .p1_11, focusedField: _focusedField)
                        ScorecardTile(hole: 12, bgColor: playerInputColor, field: .p1_12, focusedField: _focusedField)
                        ScorecardTile(hole: 13, bgColor: playerInputColor, field: .p1_13, focusedField: _focusedField)
                        ScorecardTile(hole: 14, bgColor: playerInputColor, field: .p1_14, focusedField: _focusedField)
                        ScorecardTile(hole: 15, bgColor: playerInputColor, field: .p1_15, focusedField: _focusedField)
                        ScorecardTile(hole: 16, bgColor: playerInputColor, field: .p1_16, focusedField: _focusedField)
                        ScorecardTile(hole: 17, bgColor: playerInputColor, field: .p1_17, focusedField: _focusedField)
                        ScorecardTile(hole: 18, bgColor: playerInputColor, field: .p1_18, focusedField: _focusedField)
                        
                        // Total Tile
                        ScorecardTile(hole: 19, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8), field: nil, focusedField: _focusedField)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                    
                    // Player 2
                    HStack(spacing: 2) {
                        ScorecardTile(hole: 1, bgColor: playerInputColor, field: .p2_1, focusedField: _focusedField)
                        ScorecardTile(hole: 2, bgColor: playerInputColor, field: .p2_2, focusedField: _focusedField)
                        ScorecardTile(hole: 3, bgColor: playerInputColor, field: .p2_3, focusedField: _focusedField)
                        ScorecardTile(hole: 4, bgColor: playerInputColor, field: .p2_4, focusedField: _focusedField)
                        ScorecardTile(hole: 5, bgColor: playerInputColor, field: .p2_5, focusedField: _focusedField)
                        ScorecardTile(hole: 6, bgColor: playerInputColor, field: .p2_6, focusedField: _focusedField)
                        ScorecardTile(hole: 7, bgColor: playerInputColor, field: .p2_7, focusedField: _focusedField)
                        ScorecardTile(hole: 8, bgColor: playerInputColor, field: .p2_8, focusedField: _focusedField)
                        ScorecardTile(hole: 9, bgColor: playerInputColor, field: .p2_9, focusedField: _focusedField)
                        ScorecardTile(hole: 10, bgColor: playerInputColor, field: .p2_10, focusedField: _focusedField)
                        ScorecardTile(hole: 11, bgColor: playerInputColor, field: .p2_11, focusedField: _focusedField)
                        ScorecardTile(hole: 12, bgColor: playerInputColor, field: .p2_12, focusedField: _focusedField)
                        ScorecardTile(hole: 13, bgColor: playerInputColor, field: .p2_13, focusedField: _focusedField)
                        ScorecardTile(hole: 14, bgColor: playerInputColor, field: .p2_14, focusedField: _focusedField)
                        ScorecardTile(hole: 15, bgColor: playerInputColor, field: .p2_15, focusedField: _focusedField)
                        ScorecardTile(hole: 16, bgColor: playerInputColor, field: .p2_16, focusedField: _focusedField)
                        ScorecardTile(hole: 17, bgColor: playerInputColor, field: .p2_17, focusedField: _focusedField)
                        ScorecardTile(hole: 18, bgColor: playerInputColor, field: .p2_18, focusedField: _focusedField)
                        
                        // Total Tile
                        ScorecardTile(hole: 19, bgColor: Color(red: 0.82, green: 0.81, blue: 0.8), field: nil, focusedField: _focusedField)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                }
                .frame(height:200)
            }
            Spacer()
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
        }
        .padding()
    }
}

#Preview {
    struct ScorecardViewPreview: View {
        @State var currentView = "home"
        @State var pars: [Int] = []
        @State var playerOne: [Int] = []
        @State var playerTwo: [Int] = []
        
        var body: some View {
            ScorecardView(currentView: $currentView, pars: pars, playerOne: playerOne, playerTwo: playerTwo)
        }
    }

    return ScorecardViewPreview()
}

struct ScorecardTile: View {
    let hole: Int
    let bgColor: Color
    let field: ScorecardView.Field?
    @FocusState var focusedField: ScorecardView.Field?
    @State private var value: Int?
    
    var body: some View {
        ZStack {
            TextField("", value: $value, format: .number)
                .frame(width: Constants.TILE_WIDTH, height: Constants.TILE_WIDTH)
                .multilineTextAlignment(.center)
                .fontWidth(.expanded)
                .font(.title)
                .focused($focusedField, equals: field)
        }
        .background(bgColor)
        .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(focusedField == field ? Color.accentColor : .secondary, lineWidth: 2)
                .frame(width: Constants.TILE_WIDTH, height: Constants.TILE_WIDTH)
        )
    }
}
