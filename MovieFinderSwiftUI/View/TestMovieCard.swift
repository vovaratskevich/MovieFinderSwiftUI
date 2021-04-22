//
//  TestMovieCard.swift
//  MovieFinderSwiftUI
//
//  Created by user on 23.03.2021.
//

import SwiftUI

struct TestMovieCard: View {
    
    let movie: Movie
    @State var fillteredItems1 = filmCells
    @ObservedObject var imageLoader = ImageLoader()
        
        var body: some View {
            VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                    
                    if self.imageLoader.image != nil {
                        Image(uiImage: self.imageLoader.image!)
                        .resizable()
                    }
                }
                .aspectRatio(16/9, contentMode: .fit)
                .cornerRadius(8)
                .shadow(radius: 4)
                
                Text("Test")//(movie.title)
            }
            .lineLimit(1)
            .onAppear {
                self.imageLoader.loadImage(with: self.movie.backdropURL)
            }
        }
}

/*
struct TestMovieCard_Previews: PreviewProvider {
    static var previews: some View {
        TestMovieCard(movie: Movie)//.stubbedMovie)
    }
}
*/
