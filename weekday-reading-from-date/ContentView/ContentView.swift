//
//  ContentView.swift
//  weekday-reading-from-date
//
//  Created by Dawid on 29/05/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    var body: some View {
        VStack {
            Text("Promotion reader")
                .font(.title2)
            daySwitcher()
            Spacer()
        }
    }
    
    @ViewBuilder
    private func daySwitcher() -> some View {
        TabView(selection: $viewModel.selectedDay) {
            ForEach(Weekday.allCases, id: \.self) { weekday in
                VStack {
                    if let localisable = viewModel.getLocalisable(for: weekday) {
                        Text(localisable)
                    }
                    Text(viewModel.getPromotion(for: weekday))
                }
                .tag(weekday)
            }
        }
        .tabViewStyle(.page)
    }
}
