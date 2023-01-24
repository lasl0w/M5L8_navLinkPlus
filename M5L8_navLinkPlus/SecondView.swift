//
//  SecondView.swift
//  M5L8_navLinkPlus
//
//  Created by tom montgomery on 1/16/23.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var selectedIndex:Int?
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button("Navigate Back") {
                selectedIndex = nil
            }
        }

    }
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(selectedIndex: 1)
//    }
//}
