//
//  placesPage.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//

import SwiftUI

struct placesPage: View {
    public var Place:[PlaceData]=PlaceList.Places
            var body: some View {
                NavigationView{
                    ScrollView(.vertical,showsIndicators: false){
                        SearchBar1()

               
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(Place,id:\.self){
                                plac in
                                    NavigationLink(destination:Text(plac.Image)){PlaceCell (plac: plac)}
                                Divider()
                            }
                            }
                            
                        }
                        
                       
                    }
                    .navigationTitle("Browse")
                    .padding()
                }
            }
            }

        struct SearchBar1: View {
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
                        }}
                }
                .padding()
                .background(.regularMaterial)
                .cornerRadius(8.0)
                .frame(width: 350, height: 35)
            }
        }
    
    struct PlaceCell:View{
        var plac:PlaceData
        var body: some View{
            HStack{
                
                Image(plac.Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.vertical,4)
                    .padding(.horizontal,20)
                VStack(alignment:.leading,spacing: 4){
                    Text(plac.Name)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                    Text(plac.Info)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text("\(plac.Price)")
                
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                  .padding(.all)
                      
                  
              }


                    }
            

    }
    
struct placesPage_Previews: PreviewProvider {
    static var previews: some View {
        placesPage()
        
    }
}


