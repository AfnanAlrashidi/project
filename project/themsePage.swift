//
//  themsePage.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//

import SwiftUI

struct themsePage: View {
    public var themse:[themseData]=themseList.themse
    @State var selected = 0
            var body: some View {
                NavigationView{
                    ScrollView(.vertical,showsIndicators: false){
                        SearchBar3()
                        //picker start
                        VStack{
                            
                            Picker(selection: $selected)  {
                                
                                Text("ALL").tag(0)
                                Text("PLACES").tag(1)
                                Text("FOOD").tag(2)
                                Text("THEMES").tag(3)

                            }label: {
                                Text("themsePage")
                            }
                           .pickerStyle(SegmentedPickerStyle()).background(Color.white)
                        }
                       //end picker
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(themse,id:\.self){
                                    themse in
                                    NavigationLink(destination:Text(themse.Image)){themseCell (themse: themse)}
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

        struct SearchBar3: View {
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
                .padding()
            }
                
        }
    
    struct themseCell:View{
        var themse:themseData
        var body: some View{
            HStack{
                
                Image(themse.Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.vertical,4)
                    .padding(.horizontal,20)
                VStack(alignment:.leading,spacing: 4){
                    Text(themse.Name)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                    Text(themse.Info)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text("\(themse.Price)")
                
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                  .padding(.all)
                      
                  
              }


                    }
            

    }
    
struct themsePage_Previews: PreviewProvider {
    static var previews: some View {
        themsePage()
        
    }
}



