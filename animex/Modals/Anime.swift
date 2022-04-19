//
//  Anime.swift
//  animex
//
//  Created by Zayn on 4/18/22.
//

import Foundation

struct Anime: Identifiable, Codable {
	var id: String
	var title: String
	var original_title: String
	var image: String
	var description: String
	var release_date: String
	var rt_score: String
	var running_time: String
	var director: String
	var producer: String
	
	
}

