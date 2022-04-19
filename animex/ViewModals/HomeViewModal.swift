//
//  HomeViewModal.swift
//  animex
//
//  Created by Zayn on 4/18/22.
//

import SwiftUI

class HomeViewModal: ObservableObject {
	
	@Published var anime: [Anime] = []
	
	
	init() {
		
		getAnime()
		
		
	}
	
	
	func getAnime() {
		
		let apiService = APIService(urlString: "https://ghibliapi.herokuapp.com/films")
		apiService.getData {(result: Result<[Anime], APIError>) in
			
			switch result {
				
			case .success(let anime):
				
				DispatchQueue.main.async {
					
					self.anime = anime
				}
				
			case .failure(let error):
				print(error)
			}
		}
	}
	
	
	

}
