//
//  User.swift
//  Echo
//
//  Created by Attrams on 03/01/2026.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id: String = UUID().uuidString
    let fullname: String
    let email: String
    let phoneNumber: String
    var profileImageUrl: String?

}

extension User {
    static let MOCK_USER = User(
        fullname: "Wanda Maximoff",
        email: "wanda.maximoff@gmail.com",
        phoneNumber: "+233244123456",
        profileImageUrl: "elizabeth"
    )
}
