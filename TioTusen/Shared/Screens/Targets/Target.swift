//
//  Target.swift
//  TioTusen
//
//  Created by Mikhail Belogorodtsev on 15.10.2022.
//

import Foundation

enum InProgressState: Equatable, Hashable, Codable {
    case none
    case ongoing(startDate: Date)
}

struct Target: Identifiable, Hashable, Codable {
    let id: UUID
    let title: String
    let createdAt: Date
    let lastUpdatedAt: Date
    let inProgress: InProgressState
    let achivementsCount: Int
}
