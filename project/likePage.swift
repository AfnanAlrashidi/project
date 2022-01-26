//
//  likePage.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//

import SwiftUI

struct likePage: View {
    public var like:[likeData]=likeList.like
            var body: some View {
                NavigationView{
                    ScrollView(.vertical,showsIndicators: false){
                        SearchBar8()

               
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(like,id:\.self){
                                like in
                                    NavigationLink(destination:Text(like.Image)){likeCell (like: like)}
                                Divider()
                            }
                            }
                            
                        }
                        
                       
                    }
                    .padding()
                    .navigationTitle("Wishlist")
                    
                }
            }
        
            }

        struct SearchBar8: View {
            @State var searchText:String = ""
            @State  var isActive=false
            @State  var isPopOverPresented = false
            @State private var showModel = false
            var body: some View {
                ZStack{
                    
                    RoundedRectangle(cornerRadius:5)
                        .fill(Color("Light"))
                        .frame(width: 100, height: 35)
                    HStack{
                        
                        Image(systemName:"magnifyingglass")
                            
                        TextField("search", text:$searchText)
                        
                        
                        Button(action: {showModel = true}){
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31))
                        }
                        
                    }
                    
                    
        //                ModelView(isShowing: $showModel)
        //
        //                Button(action: {
        //                   // self.isPopOverPresented = true
        //
        //                }){
        //                    Image(systemName: "slider.horizontal.3")
        //                    .foregroundColor(Color(red: 0.152, green: 0.417, blue: 0.31))
        //                    Filter()
        //                }
        //
        //                .popover(isPresented: $isPopOverPresented){
        //                        Filter()
        //                    }
                        
                     
                        
                    }
                    .padding()
                    .background(.regularMaterial)
                    .cornerRadius(8.0)
                    .frame(width: 350, height: 35)
            }
                
            }
    
        struct likeCell:View{
            var like:likeData
            var body: some View{
                HStack{
                    
                    Image(like.Image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.vertical,4)
                        .padding(.horizontal,20)
                    
                    VStack(alignment:.leading,spacing: 4){
                        Text(like.Name)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                        Text(like.Info)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    Text("\(like.heart)")
                    
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))

                        .padding()
                          
                      
                      
                  }

                            
                        }
              
            }
