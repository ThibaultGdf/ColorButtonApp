//
//  ContentView.swift
//  BoutonRougeVertBleu
//
//  Created by Thibault GODEFROY on 23/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var white = Color.white
    var body: some View {
        
        
        ZStack{
            white
                .ignoresSafeArea()
            
            HStack{
                redButton(red: $white)
                blueButton(blue: $white)
                greenButton(green: $white)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct redButton: View {
    @Binding var red : Color
    var body: some View {
      
            
            Button {
                red = Color.red
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.red)
                        .frame(width: 115, height: 80)
                    Text("Rouge")
                        .foregroundColor(.white)
                
            }
        }
    }
}


struct blueButton: View {
    @Binding var blue : Color
    var body: some View {
        Button {
            blue = Color.blue
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .frame(width: 115, height: 80)
                Text("Bleu")
                    .foregroundColor(.white)
            }
            
        }
    }
}


struct greenButton: View {
    @Binding var green : Color
    var body: some View {
        Button {
            green = Color.green
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .frame(width: 115, height: 80)
                Text("Vert")
                    .foregroundColor(.white)
            }
            
        }
    }
}
