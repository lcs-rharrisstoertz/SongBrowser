//
//  ContentView.swift
//  SongBrowser
//
//  Created by Harris-Stoertz, Rowan on 2021-02-20.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    
    //keeps track of what the user searches for
    @State private var searchText = ""
    
    var body: some View {
        
        VStack {
            
            SearchBarView(text: $searchText)
            
            //show a prompt when no search text is given
            if searchText.isEmpty {
                Spacer()
                
                Text("Please enter an artist name")
                    .font(.title)
                    .foregroundColor(.secondary)
                
                Spacer()
                
            } else {
                
                //push the search bar to the top
                Spacer()
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}