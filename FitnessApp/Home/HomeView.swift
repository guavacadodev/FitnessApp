//
//  HomeView.swift
//  FitnessApp
//
//  Created by Jake Woodall on 3/1/26.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
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
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome to the Fitness App")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.red)
                                Text("123 kcal")
                                    .bold()
                            }
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                Text("52 Minutes")
                                    .bold()
                            }
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                Text("8 Hours")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $active, goal: 60, color: .green)
                                .padding(.all, 20)
                            ProgressCircleView(progress: $stand, goal: 600, color: .blue)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("show more")
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundStyle(Color.white)
                                .background(.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundStyle(Color.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
