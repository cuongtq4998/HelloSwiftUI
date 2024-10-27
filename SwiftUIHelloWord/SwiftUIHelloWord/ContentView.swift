//
//  ContentView.swift
//  SwiftUIHelloWord
//
//  Created by cuong tran on 27/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color.orange)
                
                Button("Tap to increment") {
                    count += 1
                }
            }.frame(width: 100, height: 100)
            
            VStack(alignment: .leading, content: {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Text("SwiftUI is awesome! count:\(count)")
                    .font(.title)
                    .foregroundColor(.black)
                
                Button("Tap to reset") {
                    count = 0
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
