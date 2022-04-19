//
//  AnimeDetailsView.swift
//  animex
//
//  Created by Zayn on 4/18/22.
//

import SwiftUI
import Kingfisher

struct AnimeDetailsView: View {
	
	let anime: Anime
	
	var body: some View {
		ZStack {
			ZStack {
				HStack {
					HStack {
					VStack {
						KFAnimatedImage(URL(string: anime.image))
							.aspectRatio(contentMode: .fit)
							.cornerRadius(15)
							.frame(width: 150, height: 200)
							.shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 0)
							.offset(y: 40)
						}
						VStack(alignment: .leading) {
							Text(anime.title)
								.font(.system(size: 25, weight: .bold, design: .rounded))
								.foregroundColor(Color.white)
							Text("Release Date \(anime.release_date)")
								.padding(.vertical, 6)
								.padding(.horizontal, 8)
								.font(.system(size: 14, weight: .bold))
								.foregroundColor(Color.white)
								.background(Color.black.opacity(0.5))
								.cornerRadius(10)
							HStack {
								Text("Rating \(anime.rt_score) / 100")
									.padding(.vertical, 6)
									.padding(.horizontal, 8)
									.font(.system(size: 14, weight: .bold))
									.foregroundColor(Color.white)
									.background(Color.black.opacity(0.5))
									.cornerRadius(10)
								
								Text("running \(anime.running_time)")
									.padding(.vertical, 6)
									.padding(.horizontal, 8)
									.font(.system(size: 14, weight: .bold))
									.foregroundColor(Color.white)
									.background(Color.black.opacity(0.5))
									.cornerRadius(10)
							}
							
							
							
						}
						.zIndex(100)
						
						Spacer()
					}
					.zIndex(100)
					.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
					.offset(y: 40)
					
				}
				
				
				
				ZStack {
					RoundedRectangle(cornerRadius: 10)
						.fill(Color.pink)
						.frame(maxWidth: .infinity, maxHeight: 240)
				}
				.zIndex(-10)
				.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
			}
			
			
				
				VStack {
					
					HStack {
					Text("Director | \(anime.director)")
						.padding(.vertical, 6)
						.padding(.horizontal, 8)
						.font(.system(size: 14, weight: .bold))
						.foregroundColor(Color.white)
						.background(Color.pink)
						.cornerRadius(10)
						.shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 0)
					
					Text("Producer | \(anime.producer)")
						.padding(.vertical, 6)
						.padding(.horizontal, 8)
						.font(.system(size: 14, weight: .bold))
						.foregroundColor(.white)
						.background(Color.pink)
						.cornerRadius(10)
						.shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 0)
						
						Spacer()
					}
					.padding(.top, 100)
					HStack {
					Text("Description")
							.padding(.vertical)
						Spacer()
					}
						.font(.system(size: 25, weight: .bold, design: .rounded))
					Text(anime.description)
				}
				.padding()
				.offset(y: -20)
			
			
			
			
		}
	}
}
