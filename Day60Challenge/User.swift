//
//  User.swift
//  Day60Challenge
//
//  Created by Kenny Albert on 12/17/21.
//

import Foundation


struct User: Codable, Identifiable {
    var id: String
    var isActive: Bool
    var name: String
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: String
    var tags: [String]
    var friends: [Friend]
    
}

struct Friend: Codable, Identifiable {
    var id: String
    var name: String
}
