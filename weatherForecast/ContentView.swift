//
//  ContentView.swift
//  weatherForecast
//
//  Created by Angela on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                DayForecast(day: "Mon",isRainy: false, high: 70, low:50)
                
                DayForecast(day: "Tue",isRainy: true, high: 76, low:55)
                
                DayForecast(day: "Wed", isRainy: false, high: 75, low: 70)
                
                DayForecast(day: "Thurs", isRainy: true, high: 75, low: 70)
                
                DayForecast(day: "Fri", isRainy: true, high: 75, low: 70)
                
                DayForecast(day: "Sat", isRainy: false, high: 75, low: 70)
                
                DayForecast(day: "Sun", isRainy: false, high: 80, low: 70)
            }
        }.defaultScrollAnchor(.leading)// start scroll with first thing in the HStack
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day:String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName:String{
        if isRainy{
            return "cloud.rain.fill"
        }else {
            return "sun.max.fill"
        }
    }
    
    var iconColor:Color{
        if isRainy{
            return Color.blue
        }else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)°")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)°")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
