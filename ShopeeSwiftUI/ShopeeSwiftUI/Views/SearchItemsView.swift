//
//  HeaderView.swift
//  ShopeeSwiftUI
//
//  Created by Chi Wan on 6/19/23.
//

import SwiftUI

struct SearchItemsView: View {
    @State var searchItemsText = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass").padding(5).foregroundColor(Color.gray)
                TextField("Search items", text: $searchItemsText).padding(5).cornerRadius(20)
                Image(systemName: "camera").padding(5).foregroundColor(Color.gray)
            }.border(.black, width: 1).background(Color.white)
            Image(systemName: "cart")
            Image(systemName: "message")
        }.padding()
    }
}

struct SearchItemsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchItemsView()
    }
}
