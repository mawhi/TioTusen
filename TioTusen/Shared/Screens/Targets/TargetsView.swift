//
//  TargetsView.swift
//  TioTusen
//
//  Created by Mikhail Belogorodtsev on 15.10.2022.
//

import SwiftUI

struct TargetsView: View {

    var body: some View {
        NavigationView {
            List(sampleTargets) { target in
                TargetRow(target: target)
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(
                        EdgeInsets(top: 5,
                                   leading: 20,
                                   bottom: 5,
                                   trailing: 20)
                    )
            }
            .listStyle(.plain)
            .background(Color("background"))
            .scrollContentBackground(.hidden)
            .navigationTitle("Targets")
        }
    }
}

struct TargetsView_Previews: PreviewProvider {
    static var previews: some View {
        TargetsView()
    }
}
