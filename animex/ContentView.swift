//
//  ContentView.swift
//  animex
//
//  Created by Zayn on 4/18/22.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var vm = HomeViewModal()
	
    var body: some View {
		VStack {
			
			HomeView(vm: vm)
			
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
