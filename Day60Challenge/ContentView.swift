//
//  ContentView.swift
//  Day60Challenge
//
//  Created by Kenny Albert on 12/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var users = [User]()
    
    
    var body: some View {
        NavigationView{
            List{
                
            }
            .task {
                await loadData()
            }
            .navigationTitle("Day 60 Challenge")
        }
    }
}

func loadData() async {
    guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
        print("URL BAD")
        return
    }
    
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        if let decodedResponse = try? JSONDecoder().decode(User.self, from: data) {
            users = decodedResponse.users
        }
    } catch {
        print("Invalid Data")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
