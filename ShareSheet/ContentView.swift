//
//  ContentView.swift
//  ShareSheet
//
//  Created by Ramill Ibragimov on 24.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShareSheetShowing = false
    
    var body: some View {
        Button(action: shareButton) {
            Image(systemName: "square.and.arrow.up")
                .font(.largeTitle)
        }
    }
    
    func shareButton() {
        isShareSheetShowing.toggle()
        
        let url = URL(string: "https://apple.com")
        let av = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
