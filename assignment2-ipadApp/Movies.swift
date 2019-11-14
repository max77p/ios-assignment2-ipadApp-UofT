//
//  Movies.swift
//  iPad Application
//
//  Created by Sohrab Yaghoubi on 2019-10-28.
//  Copyright © 2019 CS2680. All rights reserved.
//
// To parse the JSON, add this file to your project and do:
//
//   let movies = try? newJSONDecoder().decode(Movies.self, from: jsonData)

import Foundation

// MARK: - Movies
class Movies: Codable {
    let movies: [Movie]

    init(movies: [Movie]) {
        self.movies = movies
    }
}

// MARK: - Movie
class Movie: Codable {
    let title: String
    let url: String

    init(title: String, url: String) {
        self.title = title
        self.url = url
    }
}
// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    return encoder
}
