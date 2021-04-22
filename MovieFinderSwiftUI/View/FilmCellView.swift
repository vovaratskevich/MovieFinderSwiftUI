//
//  FilmCellView.swift
//  MovieFinderSwiftUI
//
//  Created by user on 16.03.2021.
//

import SwiftUI

struct FilmCellView: View {
    var item: FilmCell
    var body: some View {
        
        HStack (spacing: 15) {
            
            VStack {
                
                HStack {
                    
                    HStack {
                        
                        Text(item.name)
                            .font(.title2)                     
                    }
                    VStack (alignment: .trailing) {
                       
                        Text (item.source)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer (minLength: 10)
                }
                
                Divider()
                
            }
            Image(systemName: "play")
        }
        .padding(.horizontal)       
        
    }
}

