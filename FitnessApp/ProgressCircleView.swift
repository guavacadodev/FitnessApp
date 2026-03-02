//
//  ProgressCircleView.swift
//  FitnessApp
//
//  Created by Jake Woodall on 3/1/26.
//

import SwiftUI

struct ProgressCircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(.red.opacity(0.3), lineWidth: 20)
            Circle()
                .trim(from: 0, to: 0.3)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .rotation(Angle(degrees: 270))
                .shadow(radius: 5)
                
        }
    }
}

#Preview {
    ProgressCircleView()
}
