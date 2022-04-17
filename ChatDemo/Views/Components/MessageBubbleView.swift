//
//  MessageBubbleView.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI

struct MessageBubbleView: View {
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color.colorTheme.grey : Color.colorTheme.peach)
                    .cornerRadius(15)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
            
            
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding()
        .onTapGesture {
            showTime.toggle()
        }
    }
}










struct MessageBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubbleView(message: previewMessage)
    }
}
