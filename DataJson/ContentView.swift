//
//  ContentView.swift
//  DataJson
//
//  Created by Omid Heydarzadeh on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data = ReadJsonData()
    
    var body: some View {
        VStack {
            List(data.users) { info in
                VStack(alignment: .leading) {
                    HStack {
                        Text(info.name)
                            .font(.title)
                        Text(info.job)
                            .font(.body)
                    }
                    Text(info.email)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//#Preview {
//    ContentView()
//}
