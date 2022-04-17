//
//  HomeView.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        VStack {
            VStack {
                // MARK: - Title
                TitleRowView()
                    .background(Color.colorTheme.peach)
                
                ScrollView {
                    ForEach(previewArrayMessage, id: \.self) { text in
                        MessageBubbleView(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                    }
                }
                .padding()
                .background()
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color.colorTheme.peach)
            
            MessageFieldView()
        }
    }
}








struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
