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
            // MARK: - Title
            TitleRowView()
                .background(Color.colorTheme.peach)
            
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
