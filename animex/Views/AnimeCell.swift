//
//  AnimeCell.swift
//  animex
//
//  Created by Zayn on 4/18/22.
//

import SwiftUI
import Kingfisher

struct AnimeCell: View {
	
	@ObservedObject var vm: HomeViewModal
	@State var showDetails: Bool = false
	let anime: Anime
	
	var body: some View {
		
		VStack {
			
			HStack(spacing: 15) {
				
					VStack(alignment: .leading) {
						
						
						KFAnimatedImage(URL(string: anime.image))
							.aspectRatio(contentMode: .fit)
							.frame(width: 200, height: 300)
							.cornerRadius(20)
						VStack(alignment: .leading) {
							Text(anime.title)
						}
						
						
						
					}
					.frame(width: 200, height: 340)
					.overlay(
						VStack {
							HStack {
								
								Text("score \(anime.rt_score) / 100")
									.padding(.horizontal, 10)
									.padding(.vertical, 4)
									.font(.system(size: 17))
									.foregroundColor(Color.white)
									.background(Color.pink)
									.cornerRadius(9)
									.padding()
									.offset(y: 5)
								
								Spacer()
							}
							Spacer()
						}
							
						
					)
					
					
				
			}
		}
		.sheet(isPresented: $showDetails) {
			AnimeDetailsView(anime: anime)
		}
		.onTapGesture {
			self.showDetails = true
		}
	}
}
