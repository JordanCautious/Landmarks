//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Jordan Haynes on 2/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .frame(width: 850, height: 700)
    }
}
