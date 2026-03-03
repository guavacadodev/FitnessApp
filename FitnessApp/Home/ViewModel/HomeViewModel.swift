//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Jake Woodall on 3/2/26.
//

import Foundation
import Combine
import SwiftUI

class HomeViewModel: ObservableObject {
    var calories: Int = 123
    var active: Int = 52
    var stand: Int = 8
    var mockActivities = [
        Activity(id: 0, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,812"),
        Activity(id: 1, title: "Today's Steps", subTitle: "Goal 4,000", image: "figure.walk", tintColor: .blue, amount: "2,812"),
        Activity(id: 2, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: .purple, amount: "22,001"),
        Activity(id: 3, title: "Today's Steps", subTitle: "Goal 1,000", image: "figure.walk", tintColor: .yellow, amount: "55,812"),
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "51 Minutes", date: "Aug 1", calories: "512"),
        Workout(id: 1, title: "Strength Training", image: "figure.walk", tintColor: .blue, duration: "22 Minutes", date: "Aug 1", calories: "28903"),
        Workout(id: 2, title: "Running", image: "figure.run", tintColor: .green, duration: "98 Minutes", date: "Aug 1", calories: "2890"),
        Workout(id: 3, title: "Walking", image: "figure.run", tintColor: .yellow, duration: "128 Minutes", date: "Aug 1", calories: "1280"),
    ]
}
