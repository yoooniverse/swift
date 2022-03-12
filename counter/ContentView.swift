//
//  ContentView.swift
//  counter
//
//  Created by YOONKYUNG LEE on 2022/03/12.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        VStack{
        Text("The number is")
        Text("\(counter)").font(.largeTitle)
            HStack{
                Button(action: plus) { Text("Plus")
                }
                Button(action: minus){
                    Text("Minus")
                }
            }
            
        }
    }
    
    func plus() {
        counter = counter + 1
    }
    func minus() {
        counter = counter - 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
