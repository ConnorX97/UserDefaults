//
//  Defaults.swift
//  UserDefaults
//
//  Created by Sherzod Fayziev on 13/01/24.
//

import Foundation

struct Defaults {
    static let defaults = UserDefaults.standard
    
    //MARK: - Name string
    static func storeName(name: String) {
        defaults.set(name, forKey: "name")
    }
    
    static func loadName()->String {
        defaults.object(forKey: "name") as? String ?? "no name"
    }
    
    //MARK: - User Object
    
    static func storeUser(user: User) {
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(user) {
            defaults.set(encodedUser, forKey: "user")
        }
    }
    
    static func loadUser() -> User! {
        if let savedUserData = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData) {
                return savedUser
            }
        }
        return nil
    }
    
}
