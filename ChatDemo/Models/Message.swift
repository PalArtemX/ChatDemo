//
//  Message.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import Foundation


struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
