//
//  Data.swift
//  project
//
//  Created by afnan on 23/06/1443 AH.
//

import Foundation
import UIKit
import SwiftUI

struct PlaceData :Codable,Identifiable ,Hashable{
    
   public  let id=UUID()
   public let Image : String
   public  let Name : String
   public let Info : String
   public var Price : Int
 
}

struct PlaceList{
   static  let Places=[
        PlaceData(Image: "p1", Name: "The Ritz-Carlton", Info: "Start at",Price:500),
        PlaceData(Image: "p2", Name: "Revan Hotel Suites", Info: "Start at",Price:500),
        PlaceData(Image: "p3", Name: "Vittori Palace Hotel", Info: "Start at",Price:500),
        PlaceData(Image: "p4", Name: "Novotel Suites Riyadh Dyar", Info: "Start at",Price:500),
        PlaceData(Image: "p5", Name: "Hilton Garden Inn Riyadh Olaya", Info: "Start at",Price:500),
        PlaceData(Image: "p6", Name: "Piano Lounge", Info: "Start at",Price:500),
        PlaceData(Image: "p7", Name: "F40 Lounge", Info: "Start at",Price:500),
        PlaceData(Image: "p8", Name: "SAO Lounge", Info: "Start at",Price:500),
        PlaceData(Image: "p9", Name: "Nobu Riyadh Restaurant", Info: "Start at",Price:500),
        PlaceData(Image: "p10", Name: "Steak House Restaurant", Info: "Start at",Price:500),
        
    ]
}
struct foodData :Codable,Identifiable ,Hashable{
    
   public  let id=UUID()
   public let Image : String
   public  let Name : String
   public let Info : String
   public var Price : Int
 
}

struct foodList{
   static  let foods=[
    foodData(Image: "f1", Name: "Sugar Sprinkles", Info: "Start at",Price:500),
    foodData(Image: "f2", Name: "AANI & DANI", Info: "Start at",Price:500),
    foodData(Image: "f3", Name: "Patchi", Info: "Start at",Price:500),
    foodData(Image: "f4", Name: "Signature Juice", Info: "Start at",Price:500),
    foodData(Image: "f5", Name: "50 Fruits", Info: "Start at",Price:500),
    foodData(Image: "f6", Name: "Dhahia juice", Info: "Start at",Price:500),
    foodData(Image: "f7", Name: "Charcoza Restaurant", Info: "Start at",Price:500),
    foodData(Image: "f8", Name: "The 365 Restaurant", Info: "Start at",Price:500),
    foodData(Image: "f9", Name: "The table Restaurant", Info: "Start at",Price:500),
    foodData(Image: "f10", Name: "Ovvi Restaurant", Info: "Start at",Price:500),
        
    ]
}
struct themseData :Codable,Identifiable ,Hashable{
    
   public  let id=UUID()
   public let Image : String
   public  let Name : String
   public let Info : String
   public var Price : Int
 
}

struct themseList{
   static  let themse=[
    themseData(Image: "t1", Name: "Wedding", Info: "Start at",Price:500),
    themseData(Image: "t2", Name: "Baby Shower", Info: "Start at",Price:500),
    themseData(Image: "t3", Name: "Masquerade", Info: "Start at",Price:500),
    themseData(Image: "t4", Name: "Graduation party", Info: "Start at",Price:500),
    themseData(Image: "t5", Name: "Birthday party", Info: "Start at",Price:500),
    themseData(Image: "t6", Name: "Eid Mubarak", Info: "Start at",Price:500),
    themseData(Image: "t7", Name: "Wedding", Info: "Start at",Price:500),
    themseData(Image: "t8", Name: "Campfire Night Party", Info: "Start at",Price:500),
    themseData(Image: "t9", Name: "Wedding", Info: "Start at",Price:500),
    themseData(Image: "t10", Name: "Bye Bye single life party", Info: "Start at",Price:500),
        
    ]
}
struct likeData :Codable,Identifiable ,Hashable{
    
   public  let id=UUID()
   public let Image : String
   public  let Name : String
   public let Info : String
   public var heart : String
 
}

struct likeList{
   static  let like=[
    likeData(Image: "t3", Name: "Graduation Party", Info: "Service at Home",heart:"heart.fill"),
    likeData(Image: "f4", Name: "Signature Juice", Info: "Service at Home",heart:"heart.fill"),
    likeData(Image: "f2", Name: "AANI & DANI", Info: "Service at Home",heart:"heart.fill"),
    likeData(Image: "t8", Name: "Wedding Setup", Info: "Service at Home",heart:"heart.fill"),
    likeData(Image: "f6", Name: "Dhahia juice", Info: "Service at Home",heart:"heart.fill"),
    likeData(Image: "p6", Name: "Piano Lounge", Info: "Service at Home",heart:"heart.fill"),
    likeData(Image: "t7", Name: "Campfire night Party", Info: "Service at Home",heart:"heart.fill"),
    
        
    ]
}

