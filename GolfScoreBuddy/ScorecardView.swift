//
//  ScoreCardView.swift
//  Golf Score Buddy
//
//  Created by Nick Ray on 4/25/24.
//

import SwiftUI

struct ScorecardView: View {
    @Binding var currentView: String
    @State var holes: [Int] = Array(repeating: 0, count: 18)
    
    let width: CGFloat = 60
    
    var body: some View {
        VStack {
            Text("Scorecard")
                .font(.system(.largeTitle, design: .rounded))
            Spacer()
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 1) {
                        ForEach((1...18), id: \.self) {
                            Text("\($0)")
                                .foregroundStyle(.white)
                                .frame(width: width, height: 25)
                                .background(.green)
                                .fontWeight(.bold)
                        }
                    }
                    HStack(spacing: 1) {
                        ForEach((1...18), id: \.self) { i in
                            ZStack {
                                RoundedRectangle(cornerRadius: 20.0, style: .circular)
                                    .fill(.clear)
                                    .frame(width: width, height: width)
                                    .border(.black)
                                    .background(Color(red: 0.82, green: 0.81, blue: 0.8))
                                TextField("", value: $holes[i], format: .number)
                            }
                        }
                    }
                    
                    HStack(spacing: 1) {
                        ForEach((1...18), id: \.self) { i in
                            ZStack {
                                RoundedRectangle(cornerRadius: 20.0, style: .circular)
                                    .fill(.clear)
                                    .frame(width: width, height: width)
                                    .border(.black)
                                TextField("", value: $holes[i], format: .number)
                            }
                        }
                    }
                    
                    HStack(spacing: 1) {
                        ForEach((1...18), id: \.self) { i in
                            ZStack {
                                RoundedRectangle(cornerRadius: 20.0, style: .circular)
                                    .fill(.clear)
                                    .frame(width: width, height: width)
                                    .border(.black)
                                TextField("", value: $holes[i], format: .number)
                            }
                        }
                    }
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
}

#Preview {
    struct Preview: View {
        @State var currentView = "home"
        @State var holes: [Int] = []
        var body: some View {
            ScorecardView(currentView: $currentView, holes: holes)
        }
    }

    return Preview()
}
