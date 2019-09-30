//
//  ContentView.swift
//  sample-swift-scene-life-cycle

import SwiftUI

@available(iOS 13.0.0, *)
struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

@available(iOS 13.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
