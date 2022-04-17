//
//  MessagesViewModel.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


class MessagesViewModel: ObservableObject {
    @Published private(set) var messages: [Message] = []
    @Published private(set) var lastMessageId = ""
    
    let db = Firestore.firestore()
    
    init() {
        getMessages()
    }
    
    
    // MARK: - Functions
    
    // MARK: getMessages
    func getMessages() {
        db.collection("messages").addSnapshotListener { querySnapshot, error in
            guard let document = querySnapshot?.documents else {
                print("Error fetching documents: \(String(describing: error))")
                return
            }
            
            self.messages = document.compactMap { document -> Message? in
                do {
                    return try document.data(as: Message.self)
                } catch {
                    print("Error decoding document into Message: \(error)")
                    return nil
                }
            }
            
            self.messages.sort { $0.timestamp < $1.timestamp }
            
            if let id = self.messages.last?.id {
                self.lastMessageId = id
            }
        }
    }
    
    // MARK: sendMassage
    func sendMassage(text: String) {
        do {
            let newMessage = Message(id: "\(UUID())", text: text, received: false, timestamp: Date())
            
            try db.collection("messages").document().setData(from: newMessage)
        } catch {
            print("Error adding message to Firestore: \(error)")
        }
    }
    
    
    
}
