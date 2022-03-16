//
//  main.swift
//  Test
//
//  Created by Ying, Kaile on 3/16/22.
//

import Foundation
import SwiftUI

class main{

    struct ContentView: View {
        var body: some View {
                
        VStack{
            Text("123")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 0.961, saturation: 0.396, brightness: 0.92))
                .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
        
            Button("Next"){button1Event()}
                .buttonStyle(.bordered)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .frame(width: 200, height: 100)
            
            
        }
        .padding()
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
        
}
}
