//
//  TargetRow.swift
//  TioTusen
//
//  Created by Mikhail Belogorodtsev on 15.10.2022.
//

import SwiftUI

struct TargetRow: View {
    let target: Target

    var body: some View {
        HStack {

            VStack(spacing: 5) {
                TargetControlButton(target: target)
                    .frame(width: 50, height: 50)

                Text("1:53")
                    .foregroundColor(Color.accentColor)
                    .font(.caption2)

            }


            VStack(alignment: .leading, spacing: 5) {
                HStack(alignment: .top) {
                    Text(target.title)
                        .foregroundColor(Color.accentColor)
                        .font(.headline)

                    Spacer()

                    HStack(spacing: 1) {
                        Image(systemName: "trophy")
                            .foregroundColor(.accentColor)

                        Text("\(target.achivementsCount)")
                            .font(.callout)
                    }
                }

                Text("94 hours left till next milestone")
                    .font(.caption)

                Text("WIP: milestone progress")
                    .font(.caption2)
            }

            Spacer()

        }
        .padding()
        .frame(minHeight: 100)
        .background(Color("elementsBackground"))
        .cornerRadius(10)
    }
}

struct TargetRow_Previews: PreviewProvider {
    static var previews: some View {
        TargetRow(target: sampleTargets.first!)
            .previewLayout(.fixed(width: 360, height: 100))
    }
}
