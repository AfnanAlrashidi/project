//
//  tabView.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//

import SwiftUI

struct tabView: View {
    var body: some View {
       
                TabView{
                   
                    
                   placesPage()
                       
                        .tabItem{

                            Image(systemName: "square.grid.2x2")
                            Text("Browse")
                                .foregroundColor(Color(red: 0.777, green: 0.497, blue: 0.388))

                        }
                    
                     
                    Text("")
                        
                        .tabItem{
                            Image(systemName: "list.bullet.rectangle.portrait")
                            Text("Orders")
                                .foregroundColor(Color(red: 0.777, green: 0.497, blue: 0.388))
                        }
                    
                    
                    likePage()

                       
                        .tabItem{
                            Image(systemName: "heart")
                            Text("Wishtes")
                                .foregroundColor(Color(red: 0.777, green: 0.497, blue: 0.388))
                        }
                    Text("")
                        .tabItem{
                           
                            Image(systemName: "person")
                            Text("Profile")
                                
                }

            }
                .accentColor(Color(red: 0.773, green: 0.497, blue: 0.388))

        }
            
           
                

            
    


struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
}

