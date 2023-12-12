//
//  DataManager.swift
//  BBosong
//
//  Created by 김미진 on 12/12/23.
//

import Foundation

protocol DataManager {
    func get<T>(key: String, type: T.Type) -> T? where T : Codable
    func get(key: String) -> String?
    func set<T>(key: String, value: T?) where T : Codable
    func remove(key: String)
    func clear()
}
