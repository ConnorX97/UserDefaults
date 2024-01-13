//
//  ContentView.swift
//  UserDefaults
//
//  Created by Sherzod Fayziev on 13/01/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        print(Defaults.loadName())
        Defaults.storeName(name: "Hi HOw are you?")
        print(Defaults.loadName())
        let user = User(email: "fayziyev658", password: "agbdlcid")
        Defaults.storeUser(user: user)
        print (Defaults.loadUser())
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
