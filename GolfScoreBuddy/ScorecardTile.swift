//
//  ScorecardTile.swift
//  GolfScoreBuddy
//
//  Created by Nick Ray on 4/28/24.
//

import SwiftUI

struct ScorecardTile: View {
    let id: String
    let hole: Int
    let bgColor: Color
    @State private var value: Int?
    
    var body: some View {
        ZStack {
            TextField("", value: $value, format: .number)
                .frame(width: Constants.TILE_WIDTH, height: Constants.TILE_WIDTH)
                .multilineTextAlignment(.center)
                .fontWidth(.expanded)
                .font(.title)
        }
        .background(bgColor)
        .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black, lineWidth: 2)
                .frame(width: Constants.TILE_WIDTH, height: Constants.TILE_WIDTH)
        )
    }
}

#Preview {
    struct ScorecardTilePreview: View {
        let hole = 1
        let color = Color(red: 0.82, green: 0.81, blue: 0.8)
        
        var body: some View {
            ScorecardTile(id: "par", hole: hole, bgColor: color)
        }
    }

    return ScorecardTilePreview()
}
