//
//  ContentView.swift
//  ShopeeSwiftUI
//
//  Created by Chi Wan on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                HeaderView().frame(height: 250)
                SearchItemsView()
            }
            Spacer()
        }.ignoresSafeArea(edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
