//
//  SearchView.swift
//  MovieFinderSwiftUI
//
//  Created by user on 16.03.2021.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var fillteredItems: [FilmCell]
    
    var body: some View {
        
            //ZStack {
                
                VStack (spacing: 0) {
                    
                    /*
                    HStack {
                        Text ("Search")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                        Spacer (minLength: 0)
                    }
                    .padding()
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white.shadow(color: Color.black.opacity(0.18), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5))
                    .zIndex(1)
                    */
                    
                    ScrollView (.vertical, showsIndicators: false) {
                        
                        VStack (spacing: 15) {
                            
                            ForEach (fillteredItems) { item in
                                
                                FilmCellView(item: item)
                            }
                        }
                        //.padding(.horizontal)
                        .padding(.top, 20)
                    }
                    .zIndex(0)
                }
                //.background(Color.black.opacity(0.06).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
                //.edgesIgnoringSafeArea(.top)
            //}
            //.navigationBarHidden(true)
           // .navigationTitle("Popular")
        
    }
}
