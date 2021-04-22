//
//  FilmCell.swift
//  MovieFinderSwiftUI
//
//  Created by user on 16.03.2021.
//

import Foundation
import SwiftUI

struct FilmCell: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var source: String
}

var filmCells = [
    FilmCell(name: "Tom & Jerri", source: "2021"),
    FilmCell(name: "Last Call", source: "2021"),
    FilmCell(name: "Skylines", source: "2020"),
    FilmCell(name: "The Flash", source: "2014"),
    FilmCell(name: "Sentinelle", source: "2021"),
    FilmCell(name: "The Courier", source: "2020"),
    FilmCell(name: "City of Lies", source: "2018"),
    FilmCell(name: "Happily", source: "2021"),
    FilmCell(name: "SAS: Red Noties", source: "2021"),
    FilmCell(name: "Nobody", source: "2021"),
    FilmCell(name: "The Seventh Day", source: "2021"),
    FilmCell(name: "Six Minutes to Midnight", source: "2021"),
    FilmCell(name: "Come True", source: "2020"),
    FilmCell(name: "Little Fish", source: "2020"),
    FilmCell(name: "Nomadland", source: "2020"),
]
