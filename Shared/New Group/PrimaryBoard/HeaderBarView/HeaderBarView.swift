//
//  HeaderBarView.swift
//  scrollo-ios (iOS)
//
//  Created by user on 10.04.2022.
//

import SwiftUI

struct HeaderBarView: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            Image("messanger")
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        .padding(.horizontal)
    }
}

struct HeaderBarView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBarView()
    }
}
