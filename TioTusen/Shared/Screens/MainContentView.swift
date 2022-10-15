//
//  MainContentView.swift
//  Shared
//
//  Created by Mikhail Belogorodtsev on 03.08.2022.
//

import SwiftUI

struct MainContentView: View {

    var body: some View {
        TabView {
            TargetsView()
                .tabItem {
                    Label("Targets",
                          systemImage: "target")
                }
                .badge("ongoing") // TODO: Update

            ActivitiesView()
                .tabItem {
                    Label("Activities",
                          systemImage: "trophy")
                }
                .badge(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
