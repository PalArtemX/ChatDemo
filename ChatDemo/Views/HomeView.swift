//
//  HomeView.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var messagesVM: MessagesViewModel
    
    var body: some View {
        VStack {
            VStack {
                // MARK: - Title
                TitleRowView()
                    .background(Color.colorTheme.peach)
                
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesVM.messages, id: \.id) { message in
                            MessageBubbleView(message: message)
                        }
                    }
                    .padding()
                    .background()
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesVM.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(Color.colorTheme.peach)
            
            MessageFieldView()
        }
    }
}








struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MessagesViewModel())
    }
}
