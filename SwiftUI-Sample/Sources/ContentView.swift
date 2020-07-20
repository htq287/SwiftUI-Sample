//
//  ContentView.swift
//  SwiftUI-Sample
//
//  Created by Truong Quang Hung on 7/20/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
