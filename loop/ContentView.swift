
//
//  ContentView.swift
//  loop
//
//  Created by YOONKYUNG LEE on 2022/03/12.
//

import SwiftUI

struct Friend: Identifiable {
    var id: Int
    var name: String
}

struct ContentView: View {
    let friends: [Friend] =
        [Friend(id:0, name: "Jay"),
        Friend(id:1, name: "Mark"),
        Friend(id:2, name: "Thomas"),
        Friend(id:3, name: "Myself")]
    
    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination:DetailView()) {
                Text(friend.name)
            }
            }.navigationBarTitle(Text("My friends"))
        }
    }
}

struct DetailView: View {
    var body: some View{
        Text("Hello")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
