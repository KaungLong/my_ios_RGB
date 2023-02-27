//
//  ContentView.swift
//  RGB
//
//  Created by 危末狂龍 on 2022/9/26.
//

import SwiftUI

struct ContentView: View {
    @State var redValue:Double
    @State var greenValue:Double
    @State var blueValue:Double
    
    var body: some View {
        ZStack{
            Color(red: redValue, green: greenValue, blue: blueValue).edgesIgnoringSafeArea(.all)
    
        VStack{
            HStack{
                myText(color: "R", value: redValue)
                Spacer()
                myText(color: "G", value: greenValue)
                Spacer()
                myText(color: "B", value: blueValue)
            }.offset(x:0,y:50)
            Spacer()
            Slider(value:$redValue)
            Slider(value:$greenValue)
            Slider(value:$blueValue)
        }.frame(width: UIScreen.main.bounds.size.width*0.8)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(redValue: 1.0, greenValue: 1.0, blueValue: 1.0)
    }
}

struct myText: View {
    var color :String
    var value :Double
    var body: some View {
        HStack {
            Text(color+": \(Int(value * 255.0))")
                .font(.title)
                .fontWeight(.light)
            Spacer()
        }.frame(width: 100.0).fixedSize()
    }
}
