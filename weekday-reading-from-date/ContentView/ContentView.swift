//
//  ContentView.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import SwiftUI

struct ContentView: View {
    private let viewModel = ContentViewModel()
    var body: some View {
        VStack {
            Text("Promotion reader")
                .font(.title2)
            if let weekday = viewModel.getCurrentWeekday() {
                Text("\(weekday)")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
