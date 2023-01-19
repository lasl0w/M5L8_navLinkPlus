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
    //@State var selectedIndex:Int?
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20) {
                
                // How do we know which link they pressed??? Tags!
                NavigationLink(destination: SecondView(), label: {Text("Navigation Link 1")}
                )
                
                NavigationLink(destination: SecondView(), label: {Text("Navigation Link 2")}
                )
                
                // use the tag initializer
                // base case, selection is constant
                NavigationLink(
                    destination: SecondView(),
                    tag: 1,
                    selection: .constant(1),
                    label: {Text("Navigation Link 3")}
                )
                // selection is a STATE var
                // selectedIndex as a binding
//                NavigationLink(
//                    destination: SecondView().onAppear(perform: {print(selectedIndex)}),
//                    tag: 2,
//                    selection: $selectedIndex,
//                    label: {Text("Navigation Link 4")}
//                )
//                // selection receives the tag (if tapped) and stores it in the selectedIndex state var
//                NavigationLink(
//                    destination: SecondView().onAppear(perform: {print(selectedIndex)}),
//                    tag: 2,
//                    selection: $selectedIndex,
//                    label: {Text("Navigation Link 5")}
//                )
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
