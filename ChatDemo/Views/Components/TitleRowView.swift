//
//  TitleRowView.swift
//  ChatDemo
//
//  Created by Artem Paliutin on 17/04/2022.
//

import SwiftUI

struct TitleRowView: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1615240955338-39cb9f578925?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
    var name = "Alene Ivanova"
    
    var body: some View {
        HStack(spacing: 20.0) {
            // MARK: - Image
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .mask(Circle())
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                // MARK: - Name
                Text(name)
                    .font(.title3)
                    .bold()
                // MARK: - Status
                Text("Online")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.and.waveform")
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.gray)
                .padding()
                .background()
                .mask(Circle())
        }
        .padding()
    }
}










struct TitleRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TitleRowView()
                .previewLayout(.sizeThatFits)
            TitleRowView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
        .background(Color.colorTheme.peach)
    }
}
