//
//  User.swift
//  FriendFace
//
//  Created by Alvaro Valdes Salazar on 04-10-20.
//

import Foundation

struct Response: Codable {
    var users: [User]
}

struct User: Codable, Identifiable {
        
    var id : String
//    var isActive : Bool?
    var name : String
    var age: Int
    var company: String
    var email: String
    var address: String
//    var about: String
//    var registered: String?
//    var tags: [String]
    var friends: [Friend]
    
    struct Friend: Codable, Identifiable {
        var id : String
        var name: String
    }


}
