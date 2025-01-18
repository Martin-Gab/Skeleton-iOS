//
//  Config.swift
//  Skeleton-iOS
//
//  Created by Martin Gabillet on 18/01/2025.
//

import Foundation

public struct Config {
    enum Key: String {
        case baseUrl = "BASE_URL"
    }
    
    static let baseUrl: String = {
        guard let baseUrlProperty = Bundle.main.object(
            forInfoDictionaryKey: Key.baseUrl.rawValue
        ) as? String else {
            fatalError("BASE_URL not found in Info.plist")
        }
        return baseUrlProperty
    }()
}
