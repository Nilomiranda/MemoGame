//
//  ContentView.swift
//  MemoGame
//
//  Created by Danilo Miranda on 01/08/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 4) { index in CardView() }
        }.padding(10)
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.orange)
            Text("👻")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
