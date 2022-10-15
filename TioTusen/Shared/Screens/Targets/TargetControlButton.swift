//
//  TargetControlButton.swift
//  TioTusen
//
//  Created by Mikhail Belogorodtsev on 15.10.2022.
//

import SwiftUI

struct TargetControlButton: View {

    let target: Target

    private var inProgress: Bool {
        target.inProgress != .none
    }

    private var image: Image {
        Image(systemName: inProgress ? "pause.fill" : "play")
    }

    var body: some View {
        Button {

        } label: {
            GeometryReader { context in
                ZStack {
                    Color.accentColor
                        .cornerRadius(context.size.width / 2)

                    image
                        .foregroundColor(Color("elementsBackground"))
                        .imageScale(.large)
                }
                .background(.clear)
            }
        }

    }
}

struct TargetControlButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(sampleTargets) { target in
                TargetControlButton(target: target)
            }
        }
        .previewLayout(.fixed(width: 40, height: 40))
    }
}
