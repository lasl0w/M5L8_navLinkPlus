//
//  ContentView.swift
//  M5L8_navLinkPlus
//
//  Created by tom montgomery on 1/16/23.
//

import SwiftUI

struct ContentView: View {
    
    // when there is no selection, it should be nil
    // so set to optional
    @State var selectedIndex:Int?
    
    var body: some View {
        NavigationView {
            
            VStack (spacing: 20) {
            
                NavigationLink(
                    destination:
                        SecondView(selectedIndex: $selectedIndex)
                        .onAppear(perform: {
                            print(selectedIndex)
                        }),
                    tag: 1,
                    selection: $selectedIndex,
                    label: {
                        Text("Navigation Link 1")
                    })
           
                
                NavigationLink(
                    destination:
                        SecondView(selectedIndex: $selectedIndex)
                        .onAppear(perform: {
                        print(selectedIndex)
                    }),
                    tag: 2,
                    selection: $selectedIndex,
                    label: {
                        Text("Navigation Link 2")
                    })
            }
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
