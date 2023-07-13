//
//  ContentView.swift
//  StackPractice
//
//  Created by Scholar on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack() {
            Color(.systemGray5)
                .ignoresSafeArea()
            
            // Content Container
            VStack(spacing:30.0){
                
                
                // Section 1
                VStack{
                    Text("The Albums I would take with me to space if the world ended.")
                        .multilineTextAlignment(.center)
                }
                
                
                ScrollView(.horizontal){
                    
                    HStack(alignment: .center){
                        
                        
                        Image("lana").resizable().aspectRatio(contentMode: .fit).frame(width: 200)
                        
                        
                        Image("frank").resizable().aspectRatio(contentMode: .fit).frame(width: 200)
                    }
                }.frame(width:350)
                
//                Spacer(minLength: 40.0)
                
                // Section 2
                
                VStack(){
                    VStack(){
                        Image("AOC").resizable().aspectRatio(contentMode: .fit).cornerRadius(15)
                        
                    }
                    HStack(){
                        Text("Alexandria Ocasio-Cortez").font(.headline).fontWeight(.bold).multilineTextAlignment(.leading)
                        Text("U.S Representative")
                    }.background(Rectangle().foregroundColor(.red)).frame(maxWidth:.infinity)
                    
                    VStack(){
                        Text("Representative of New York's 14th Congressional District. Progressive advocate for immigrant and racial justice, as well as reproductive rights.")
                    }
                    
                }.frame(width: 350.0).padding(.all, 15.0).background(Rectangle() .foregroundColor(.teal)).cornerRadius(15)
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}