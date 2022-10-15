//
//  TargetsManager.swift
//  TioTusen
//
//  Created by Mikhail Belogorodtsev on 15.10.2022.
//

import Foundation

final class TargetsManager {
//    @Published var targets: [Target] =
}

var sampleTargets: [Target] = [
    Target(id: UUID(),
           title: "Tennis\nTennis\nTennis",
           createdAt: Date(timeIntervalSinceReferenceDate: 3550404),
           lastUpdatedAt: Date(),
           inProgress: .none,
           achivementsCount: 1),

    Target(id: UUID(),
           title: "Swedish",
           createdAt: Date(timeIntervalSinceReferenceDate: 3234242),
           lastUpdatedAt: Date(),
           inProgress: .none,
           achivementsCount: 0),

    Target(id: UUID(),
           title: "Guitar",
           createdAt: Date(timeIntervalSinceReferenceDate: 23232323),
           lastUpdatedAt: Date(),
           inProgress: .ongoing(startDate: Date() - 32323),
           achivementsCount: 5)
]
