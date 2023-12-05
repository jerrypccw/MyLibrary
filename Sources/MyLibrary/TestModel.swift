//
//  File.swift
//  SwiftPackageDemo
//
//  Created by gzteam on 2023/12/4.
//

import Foundation

public struct TestModel: Codable {
    
    public var accessToken: String = ""
    public var locale: String = ""
    
    public init() {
        accessToken = "abc"
        locale = "v1.0.0"
    }
    
    public init(from decoder: Decoder) throws {
        if let container = try? decoder.container(keyedBy: CodingKeys.self) {
            accessToken = try! container.decode(String.self, forKey: .accessToken)
            locale = try! container.decode(String.self, forKey: .locale)
        }
    }
}
