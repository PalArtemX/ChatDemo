//
//  CustomTextFieldView.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI

struct CustomTextFieldView: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}










struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomTextFieldView(placeholder: Text("Placeholder"), text: .constant(""))
                .previewLayout(.sizeThatFits)
            CustomTextFieldView(placeholder: Text("Placeholder"), text: .constant(""))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
