//
//  TabBarView.swift
//  MovieFinderSwiftUI
//
//  Created by user on 15.03.2021.
//

import SwiftUI

struct PopularView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack (spacing: 0) {
                    
                    HStack {
                        Text ("Popular")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                        Spacer (minLength: 0)
                    }
                    .padding()
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white.shadow(color: Color.black.opacity(0.18), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5))
                    .zIndex(1)
                    
                    ScrollView {
                        
                        VStack (spacing: 15) {
                            
                            ForEach (films, id: \.filmName) { film in
                                
                                FilmView(film: film)
                            }
                        }
                        //.padding(.horizontal)
                        .padding(.top, 20)
                    }
                    .zIndex(0)
                }
                .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
                .edgesIgnoringSafeArea(.top)
            }
            .navigationBarHidden(true)
           // .navigationTitle("Popular")
        }
    }
}


struct TabBarView: View {
    
    @State var fillteredItems = filmCells
    var body: some View {
        
        TabView {
            PopularView()
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Popular")
                }
            NavigationControllerView(view: SearchView(fillteredItems: $fillteredItems), onSearch: {(txt) in
                
                //filltering Data
                
                if txt != "" {
                    self.fillteredItems = filmCells.filter{$0.name.lowercased().contains(txt.lowercased())}
                }
                else {
                    self.fillteredItems = filmCells
                }
                
            }, onCancel: {
                
                //when canceled
                self.fillteredItems = filmCells
            })
                //.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "search")
                    Text("Search")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

struct FilmView: View {
    
    
    var film: Film
    
    var body: some View {
        
        HStack {
            
            Image (film.filmPoster)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 140)
                .cornerRadius(15)
            
            VStack (alignment: .leading, spacing: 11) {
                
                Text(film.filmName)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(film.filmDescription)
                                
                Text(film.filmYear)
                    .font(.custom("Helvetica Neue", size: 10))
                    .padding(.horizontal, 3)
                    .border(Color.black, width: 0.4)
            }
            .padding(.leading, 10)
            
            Spacer(minLength: 10)
        }
        .background(Color.white.shadow(color: Color.black.opacity(0.11), radius: 5, x: 0, y: 4))
        .cornerRadius(15)
        
    }
}

//Data

struct Film {
    
    var filmName : String
    var filmDescription : String
    var filmYear : String
    var filmPoster: String
}

var films = [
    
    Film (filmName: "Tom & Jerri", filmDescription: "A chaotic battle ensues between Jerry Mouse and Tom Cat...", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
    Film (filmName: "Tom & Jerri", filmDescription: "Description", filmYear: "2020", filmPoster: "poster_1"),
]
