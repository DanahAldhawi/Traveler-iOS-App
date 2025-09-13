//
//  ContentView.swift
//  Traveler
//
//  Created by danah on 05/11/1445 AH.
//

import SwiftUI

struct Country: Identifiable {
    let id = UUID()
    let name: String
}

struct Explore: View {
    @State private var searchText = ""
    @State private var isSearching = false
    @State private var isBookmarked1 = false
    @State private var isBookmarked2 = false
    @State private var isBookmarked3 = false
    @State private var isBookmarked4 = false
   
    
    var body: some View {
        
        
        
        VStack {
            Spacer().frame(minHeight: 20)
            HStack{
                Text("Explore")
                    .bold()
                    .font(.system(size: 36))
                    .padding(.leading, 20)
                Spacer()
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 38))
                    .padding(.trailing, 12)
                
            }
            TextField("Search", text: $searchText, onEditingChanged: { editing in
                self.isSearching = editing
            } )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .overlay(
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "mic.fill")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 25)
                }).padding(.bottom, 30)
            
           
    }
            
        VStack{
                HStack{
                    ZStack{
                        Rectangle()
                            .fill(.lightGreen)
                            .frame(width: 169, height: 204)
                            .cornerRadius(13)
                        VStack(spacing: 4){

                        Image("riyadh")
                            .resizable()
                            .frame(width: 169, height: 124)
                            .scaledToFit()
                            .cornerRadius(13)
                            .padding(.top, -40)
                            
                            Button(action: {
                                       
                                       self.isBookmarked1.toggle()
                                   }) {
                                       HStack {
                                           Text("Historical Riyadh").padding(.leading, -1)
                                               .foregroundColor(Color.white)
                                           Image(systemName: isBookmarked1 ? "bookmark.fill" : "bookmark").padding(.leading, 8).foregroundColor(Color.white)
                                       }
                                   }
                            HStack{Image(systemName: "mappin.circle.fill").padding(.leading, -5).foregroundColor(Color.white)
                                Text("Riyadh").padding(.leading, -6).foregroundColor(Color.white)
                                Image(systemName: "calendar.circle.fill").padding(.leading, 5).foregroundColor(Color.white)
                                    Text("3 days").padding(.leading, -6).foregroundColor(Color.white)
                            }
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(.lightGreen)
                            .frame(width: 169, height: 204)
                            .cornerRadius(13)
                        VStack(spacing: 4){

                        Image("jeddah")
                            .resizable()
                            .frame(width: 169, height: 124)
                            .scaledToFit()
                            .cornerRadius(13)
                            .padding(.top, -40)
                            
                            Button(action: {
                                        
                                        self.isBookmarked2.toggle()
                                    }) {
                                        HStack {
                                            Text("Jeddah Sea").padding(.leading, -1)
                                                .foregroundColor(Color.white)
                                            Image(systemName: isBookmarked2 ? "bookmark.fill" : "bookmark").padding(.leading, 45).foregroundColor(Color.white)
                                        }
                                    }
                            HStack{Image(systemName: "mappin.circle.fill").padding(.leading,-8).foregroundColor(Color.white)
                                Text("Jeddah").padding(.leading, -7).foregroundColor(Color.white)
                                Image(systemName: "calendar.circle.fill").padding(.trailing, -1).foregroundColor(Color.white)
                                    Text("3 days").padding(.leading, -6).foregroundColor(Color.white)
                            }
                        }
                    }
                    
                    
                    
                }
                HStack{
                    ZStack {
                        Rectangle()
                            .fill(.lightGreen)
                            .frame(width: 169, height: 204)
                            .cornerRadius(13)
                        VStack(spacing: 4){

                        Image("alula")
                            .resizable()
                            .frame(width: 169, height: 124)
                            .scaledToFit()
                            .cornerRadius(13)
                            .padding(.top, -40)
                            
                            Button(action: {
                                        
                                        self.isBookmarked3.toggle()
                                    }) {
                                        HStack {
                                            Text("Al-Ula Nights").padding(.leading, -1)
                                                .foregroundColor(Color.white)
                                            Image(systemName: isBookmarked3 ? "bookmark.fill" : "bookmark").padding(.leading, 34).foregroundColor(Color.white)
                                        }
                                    }
                            HStack{Image(systemName: "mappin.circle.fill").padding(.leading, -8).foregroundColor(Color.white)
                                Text("Al-Ula").padding(.leading, -7).foregroundColor(Color.white)
                                Image(systemName: "calendar.circle.fill").padding(.leading, 6).foregroundColor(Color.white)
                                    Text("2 days").padding(.leading, -4).foregroundColor(Color.white)
                            }
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(.lightGreen)
                            .frame(width: 169, height: 204)
                            .cornerRadius(13)
                        VStack(spacing: 4){

                        Image("umluj")
                            .resizable()
                            .frame(width: 169, height: 124)
                            .scaledToFit()
                            .cornerRadius(13)
                            .padding(.top, -40)
                            
                            Button(action: {
                                       
                                        self.isBookmarked4.toggle()
                                    }) {
                                        HStack {
                                            Text("Umluj Island").padding(.leading, -1)
                                                .foregroundColor(Color.white)
                                            Image(systemName: isBookmarked4 ? "bookmark.fill" : "bookmark").padding(.leading, 39).foregroundColor(Color.white)
                                        }
                                    }
                            HStack{Image(systemName: "mappin.circle.fill").padding(.leading, -5).foregroundColor(Color.white)
                                Text("Umluj").padding(.leading, -6).foregroundColor(Color.white)
                                Image(systemName: "calendar.circle.fill").padding(.leading, 5).foregroundColor(Color.white)
                                    Text("3 days").padding(.leading, -6).foregroundColor(Color.white)
                            }
                        }
                    }
                  }
                
                
                .padding(.horizontal, 20)
                
                Spacer().frame(minHeight: 20)
            }
            
            
            TabView {
                        Text("")
                            .tabItem {
                                Image(systemName: "rectangle.on.rectangle")
                                Text("Explore")
                            }
                        Text("")
                            .tabItem {
                                Image(systemName: "map")
                                Text("My Trips")
                            }
                        Text("")
                            .tabItem {
                                Image(systemName: "bookmark")
                                Text("Bookmarks")
                            }
                        Text("")
                            .tabItem {
                                Image(systemName: "paperplane")
                                Text("Plan")
                            }
                    }
            
            
        }
        
        
    }



#Preview {
    Explore()
}
