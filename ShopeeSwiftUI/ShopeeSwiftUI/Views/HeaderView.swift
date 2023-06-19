//
//  HeaderView.swift
//  ShopeeSwiftUI
//
//  Created by Chi Wan on 6/20/23.
//

import SwiftUI

struct HeaderView: View {
    //hard coded, use library instead.
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let images = ["ads1", "ads2", "ads3", "ads4"]
    var body: some View {
        VStack {
            ZStack {
                TabView(selection: $selection){
                    ForEach(0..<images.count) {
                        i in Image("\(images[i])")
                    }
                }.tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .onReceive(timer, perform: {_ in
                        withAnimation{
                            selection = selection < images.count ? selection + 1 : 0
                        }
                    })
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
