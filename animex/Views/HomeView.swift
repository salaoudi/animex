//
//  HomeView.swift
//  animex
//
//  Created by Zayn on 4/18/22.
//

import SwiftUI

struct HomeView: View {
	
	
	@StateObject var vm = HomeViewModal()
	
    var body: some View {
		
		if vm.anime.isEmpty  {
			ZStack {
				ZStack {
					ProgressView()
						.foregroundColor(Color.white)
				}
				.zIndex(100)
				.padding()
				.background(Color.pink)
				.cornerRadius(15)
				
				
			}
			
			
		} else {
			VStack {
				
				HStack {
					Text("Animex")
						.font(.system(size: 40, weight: .bold, design: .rounded))
					Spacer()
				}
				.padding()
				
				HStack {
					Text("Top films")
						.font(.system(size: 20, weight: .bold, design: .rounded))
					Spacer()
				}
				.padding(.horizontal)
				ScrollView(.horizontal, showsIndicators: false) {
					HStack {
					ForEach(vm.anime) { anime in
						
							AnimeCell(vm: vm, anime: anime)
						}
						.padding(.leading)
						.padding(.trailing)
					}
					
					
					
				}
				Spacer()
				
			}
		}
		
    }
}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
