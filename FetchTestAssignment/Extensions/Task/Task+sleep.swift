//
//  Task+Sleep.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import Foundation

extension Task where Success == Never, Failure == Never {
    static func sleep(seconds: Double) async throws {
        let duration = UInt64(seconds * 1_000_000_000)
        try await Task.sleep(nanoseconds: duration)
    }
}
