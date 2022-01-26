//
//  foodPage.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//

import SwiftUI

struct foodPage: View {
    
    public var food:[foodData]=foodList.foods
            var body: some View {
                NavigationView{
                    ScrollView(.vertical,showsIndicators: false){
                        SearchBarr()

               
                    
                    //Order(item:OrderData)
                 
                        VStack{
                            Group{
                                ForEach(food,id:\.self){
                                i in
                                    NavigationLink(destination:Text(i.Image)){foodCell (food:i)}
                                Divider()
                            }
                            }
                            
                        }
                        
                       
                    }
                    .navigationTitle("Browse")
                    .padding()
                }
                .padding()
            }
            }

    

struct SearchBarr: View {
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
       
        
 .background(.regularMaterial)
 .cornerRadius(8.0)
 .frame(width: 350, height: 35)
        Divider()

}
}
 
 struct foodCell:View{
     var food:foodData
     var body: some View{
         HStack{
             Image(food.Image)
                 .resizable()
                 .scaledToFit()
                 .frame(width: 60, height: 60)
                 .padding(.vertical,4)
                 .padding(.horizontal,20)
             
             VStack(alignment:.leading,spacing: 4){
                 Text(food.Name)
                     .fontWeight(.medium)
                     .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))
                 Text(food.Info)
                     .font(.subheadline)
                     .foregroundColor(.secondary)
             }
             
             Spacer()
             Text("\(food.Price)")
             
                 .fontWeight(.medium)
                 .foregroundColor(Color(red: 0.127, green: 0.194, blue: 0.136))

                   
                   
                 .padding()
               
           }

                     
                 }
       
     }
    


struct foodPage_Previews: PreviewProvider {
    static var previews: some View {
        foodPage()
    }
}

