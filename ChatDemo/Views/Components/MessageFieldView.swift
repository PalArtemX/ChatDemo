//
//  MessageFieldView.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI

struct MessageFieldView: View {
    @State private var message = ""
    
    var body: some View {
        HStack {
            CustomTextFieldView(placeholder: Text("Enter your message here"), text: $message)
            
            Button {
                print("Message sent!")
                message = ""
            } label: {
                Image(systemName: "paperplane.circle")
                    .font(.largeTitle)
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.colorTheme.peach)
                    .mask(Circle())
            }

        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.colorTheme.grey)
        .cornerRadius(15)
        .padding()
    }
}










struct MessageFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MessageFieldView()
                .previewLayout(.sizeThatFits)
            MessageFieldView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
