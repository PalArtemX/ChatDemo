//
//  PreviewMessage.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import Foundation

let previewMessage = Message(id: "12345", text: "I've been coding Swift UI. I've been coding Swift UI", received: false, timestamp: Date())

let previewArrayMessageBubble: [Message] = [
    Message(id: "12345", text: "I've been coding Swift UI. I've been coding Swift UI", received: false, timestamp: Date()),
    Message(id: "12346", text: "I've been coding Swift UI. I've been coding Swift UI", received: true, timestamp: Date()),
    Message(id: "12347", text: "I've been coding Swift UI. I've been coding Swift UI", received: false, timestamp: Date()),
    Message(id: "12348", text: "I've been coding Swift UI. I've been coding Swift UI", received: false, timestamp: Date()),
    Message(id: "12349", text: "I've been coding Swift UI. I've been coding Swift UI", received: true, timestamp: Date()),
    Message(id: "12340", text: "I've been coding Swift UI. I've been coding Swift UI", received: false, timestamp: Date()),
]


let previewArrayMessage = ["Hello you", "How are you doing?", "I've been coding Swift UI. I've been coding Swift UI"]
