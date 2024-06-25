//
//  ContentView.swift
//  Swift-ui
//
//  Created by Sandalu Thushan on 2567-06-25.
//@state
//@binding

import SwiftUI

struct ContentView: View {
    
    @State private var isNight=false
    
    var body: some View {
        ZStack{
//            backgroundview(topcolor: isNight ? .black : .blue,
//                           // if true ===> ?
//                           bottomcolor: isNight ? .gray : Color("lightblue"))
            
            backgroundview(isNight:$isNight) //Binding<Bool>
            VStack{
                
               citychangeview(cityname: "Talawa,Sri Lanka")
//                    .background(Color.red)
//                    .frame(width: 200,height: 200)
                
                MainStatusExtractedView(image:isNight ? "sparkles": "cloud.sun.bolt.fill", temp: 26)
//                Spacer()
                
                HStack(spacing:20){
                    
                    whetherdayView(dayofweek: "Tue",
                                   imageName:isNight ? "sparkles" : "cloud.sun.rain.fill",
                                   temparate: 15)
                    
                    
                    whetherdayView(dayofweek: "Wed",
                                   imageName:"sun.snow.fill",
                                   temparate: 24)
                    
                    whetherdayView(dayofweek: "Thu",
                                   imageName:"cloud.sun.bolt.fill",
                                   temparate: 17)
                    
                    whetherdayView(dayofweek: "Fri",
                                   imageName:"thermometer.sun.fill",
                                   temparate: 54)
                    
                    whetherdayView(dayofweek: "Sat",
                                   imageName:"cloud.rainbow.half.fill",
                                   temparate: 20)
        
                    
                }
                
                    Spacer()
                
                Button(action: {
                    isNight.toggle()
                },
                       
                       
                       label: {
                    whetherbuttonView(title: "Change Day Time",
                                      textcolor: Color("darkblue"),
                                      backgroudcolor: .white)
                })
                Spacer()
                
            }
            
        }
    }
    
    
}

#Preview {
    ContentView()
}

 

struct whetherdayView: View {
    
    
    var dayofweek:String
    var imageName:String
    var temparate:Int
    
     
    var body: some View {
        VStack{
            Text(dayofweek)
                .font(.system(size: 20,weight:.medium,design: .rounded))
                .foregroundStyle(.black)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40 ,height: 40)
            Text("\(temparate)°")
                .font(.system(size: 20,weight: .medium))
                .foregroundStyle(.black)
            
        }
    }
}

struct backgroundview: View {
    
//    var topcolor: Color
//    var bottomcolor: Color
    //not pass in the these variable we can dta pass and night v and can be do data binding
    
    
   @Binding var isNight :Bool
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black: .blue ,isNight ? .gray: Color("lightblue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct citychangeview: View {
    
    var cityname :String
    
    var body: some View {
        Text(cityname)
            .font(.system(size: 32,weight:.medium,design: .rounded))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainStatusExtractedView: View {
    
    
    var image :String
    var temp : Int
    
    
    var body: some View {
        VStack(spacing:8){
            Image(systemName:image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180 ,height: 180)
            
            
            Text("\(temp)°c")
                .font(.system(size: 50,weight:.medium ))
                .foregroundStyle(.black)
            
            
        }
        .padding(.bottom,50)
    }
}

//struct whetherbuttonView: View {
//    
//    var title: String
//    var textcolor: Color
//    var backgroudcolor: Color
//    
//    var body: some View {
//        Text(title)
//            .frame(width: 300,height: 50)
//            .background(backgroudcolor)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke()
//                // Border with rounded corners
//            )
//            .font(.system(size: 30,weight:.bold ,design: .default))
//            .foregroundStyle(textcolor)
//    }
//}
