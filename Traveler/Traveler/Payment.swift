//
//  Payment.swift
//  Traveler
//
//  Created by danah on 05/11/1445 AH.
//

import SwiftUI

struct Payment: View {
    var body: some View {
        Text("Payment").bold()
            .font(.system(size: 36))
            .padding(.leading, -160)
        HStack{
            Divider().frame(width: 100, height: 4).bold().background(Color.lightGreen)
            Divider().frame(width: 100, height: 4).bold().background(Color.lightGreen)
            Divider().frame(width: 100, height: 4).bold().background(Color.lightGreen)
        }.padding(.bottom,30)
        
        Text("Total Price")
            .font(.system(size: 21))
            .padding(.leading, -160)
        
        ZStack{
            Rectangle()
                .fill(.graylight)
                .frame(width: 233, height: 54)
                .cornerRadius(8)
            Text("00.00 SAR").bold()
                .font(.system(size: 28))
        }.padding(.bottom,10)
        
        VStack{
            Text("Choose Payment Option")
                .font(.system(size: 21))
                .padding(.leading, -99)
            
            HStack{
                Image(systemName: "creditcard")                    .font(.system(size: 18)).padding(.leading, -33)
                Text("Debit / Credit Card")
                    .font(.system(size: 21))
                    .padding(.leading, -10)
            }.padding(.all, -5)
            
            ZStack{
                Rectangle()
                    .fill(.graylight)
                    .frame(width: 233, height: 43)
                    .cornerRadius(8)
                TextField("Card Holder Name", text: .constant(""))        .font(.system(size: 16))
                    .foregroundStyle(Color(.gray))
                    .padding(.leading, 100)
            }.padding(.top, 15)
            ZStack{
                Rectangle()
                    .fill(.graylight)
                    .frame(width: 233, height: 43)
                    .cornerRadius(8)
                TextField("Card Number", text: .constant(""))
                    .font(.system(size: 16)).foregroundStyle(Color(.gray))
                    .padding(.leading, 100)
            }.padding(.top, 10)
            HStack{
                ZStack{
                    Rectangle()
                        .fill(.graylight)
                        .frame(width: 111, height: 44)
                        .cornerRadius(8).padding(.leading, 80)
                    TextField("Expiry Year", text: .constant(""))
                        .font(.system(size: 16)).foregroundStyle(Color(.gray))
                        .padding(.leading, 99)
                }.padding(.top, 10)
                ZStack{
                    Rectangle()
                        .fill(.graylight)
                        .frame(width: 111, height: 44)
                        .cornerRadius(8).padding(.leading, -80)
                    TextField("CVV", text: .constant(""))
                        .font(.system(size: 16)).foregroundStyle(Color(.gray))
                        .padding(.leading, 18)
                }.padding(.top, 10)
            }.padding(.bottom, 10)
          
                Button(action: {
                   
                }) {
                    Text("Confirm Your Plan")
                        .foregroundColor(.white)
                        .padding(.horizontal, 48)
                        .padding(.vertical, 11)
                        .background(Color.lightGreen)
                        .cornerRadius(8)
                }.padding(.bottom, 10)
            
            Button(action: {
              
            }) {
               
                Text("Pay with  Pay      ")
                    .foregroundColor(.white)
                    .padding(.horizontal, 48)
                    .padding(.vertical, 11)
                    .background(Color.black)
                    .cornerRadius(8)
            }.padding(.bottom, 10)
            }
        }
    
        
        
        
    }


#Preview {
    Payment()
}
