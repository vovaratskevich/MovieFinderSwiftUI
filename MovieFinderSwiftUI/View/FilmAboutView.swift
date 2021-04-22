//
//  FilmAboutView.swift
//  MovieFinderSwiftUI
//
//  Created by user on 18.03.2021.
//

import SwiftUI

struct FilmAboutView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack {
                    
                    Image ("poster_1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400, alignment: .bottom)
                        .clipped()
                    
                    VStack (alignment: .leading, spacing: 0) {
                        
                        HStack {
                            
                            Text ("Tom & Jerri")
                                .font(.system(size: 20))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                                .padding(.horizontal)

                        }
                        
                        Text ("Description")
                            .font(.system(size: 15))
                            //.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)

                    }
                    
                    Spacer (minLength: 0)
                }
                //.background(Color.black.opacity(0.06).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
                //.edgesIgnoringSafeArea(.top)
            }
            //.navigationBarHidden(true)
            //.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        }
    }
}

struct FilmAboutView_Previews: PreviewProvider {
    static var previews: some View {
        FilmAboutView()
    }
}
