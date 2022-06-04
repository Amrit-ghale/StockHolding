//
//  utilityfunction.swift
//  Stock
//
//  Created by Amrit Ghale on 03/06/2565 BE.
//

//import SwiftUI
import Foundation

public var formater = NumberFormatter()
//importing some character in local and forgnstocks.
public let localStocks = [1:"Petro Canada",2:"ESSO", 3:"Ryal Bank",4:"Bank of Montreal",
                          5:"CIBC Bank",6:"No frills",7:"Pizza Pizza",8:"Subway",9:"Rogers"]
public let forgnStocks = [1:"Apple", 2:"Air Canada", 3:"Samsung", 4:"Google"]

func numberFormat(number: Float) -> String
{
    return formatter.string(from: number as NSNumber)!
}

public func addSpaces(width: Int, str: String, var1: Int)-> String
{
    //var1 is to give an additional feature to have fixed or varaible spaces
    //0- fix width
    //1- add spaces in front
    
    if var1 == 0
    {
        _ = width - str.count
        let padding = str.padding(toLength: 20, withPad: " ", startingAt: 0)
//        let padding = String(repeating: spaces, count: Character (" "))
        return  padding + str
    }
        
    else
    {
        return  String(repeating :Character (" "), count: width) + str
    }
}

public func showMenu()
{
print("\nChose option from (1-9) below :")
print("1 : Add Stock")
print("2 : Remove Stock")
print("3 : Display Stock with lowest value")
print("4 : Display Stock with highest Value")
print("5 : Display most profitable Stock")
print("6 : Display least profitable Stock")
print("7 : Display stocks from A-Z")
print("8 : Display stocks lowest to highest Value")
print("9 : Exit")
}

public func options()->Bool
{
    if (option >= 1 && option <= 9)
    {
        return true
    }
    else{
        print ("Incorrect option please try again !!")
        return false
    }
}

public func displayLocalStocks()
{
    print ("Local Stocks :")
    for i in 1...localStocks.count
    {
      
        print ("\(i) : \(localStocks[i]!)")
    }
}

public func displayForgnStocks()
{
    print ("Foriegn Stocks :")
    for i in 1...forgnStocks.count
    {
        
        print ("\(i) : \(forgnStocks[i]!)")
    }
}

public func validOptionFloat(start: Float)-> Float
{
    var flag = Float(input())
    if (flag ?? 0.0 <= start )
    {
        flag = nil
    }
    while (flag == nil)
    {
        print("Incorrect Value entered!! Please enter integer greater than 0")
        flag = Float(input())
        if (flag ?? 0.0 <= start)
        {
            flag = nil
        }
    }
    return flag!
}

public func validOptionString(start: Int,end: Int)->Int
{
    var flag = Int(input())
    if (flag ?? Int(1.1) < start || flag ?? Int(0.0) > end)
    {
        flag = nil
    }
        while (flag == nil)
        {
            print("Incorrect Value entered!! Please enter Integer values from \(start)-\(end)")
            flag = Int(input())
            if (flag ?? Int(1.1) < start || flag ?? Int(0.0) > end)
            {
                flag = nil
            }
        }
        return flag!
}

public func displayIndividualStock (index : Int)
{
    print("Sr.No"
          ,addSpaces(width: 17, str: "Number of Shares",var1: 0)
          ,addSpaces(width: 17, str: "Purchase Price",var1: 0)
          ,addSpaces(width: 17, str: "Current Price",var1: 0)
          ,addSpaces(width: 17, str: "Cost in Dollars",var1: 0)
          ,addSpaces(width: 17, str: "Value in Dollars",var1: 0)
          ,addSpaces(width: 17, str: "Company name",var1: 0)
          ,addSpaces(width: 17, str: "Share Type",var1: 0) )
    
    print(String (repeating: Character("="), count :132))
    if (stocklist.isEmpty)
    {
        print("No Stocks available !")
    }
    else
    {
        print (String(format: "%5d%18d%@%@%@%@%@%@",
                (1),
                stocklist[index].numberOfShares,
                      addSpaces(width: 18, str: numberFormat(number: stocklist[index].purchaseSharePrice),var1: 0),
                      addSpaces(width: 18, str: numberFormat(number: stocklist[index].currentSharePrice),var1: 0),
                      addSpaces(width: 18, str: numberFormat(number: stocklist[index].costInDollars()),var1: 0),
                      addSpaces(width: 18, str: numberFormat(number: stocklist[index].valueInDollars()),var1: 0),
                      addSpaces(width: 18, str: stocklist[index].companyName,var1: 0),
                      addSpaces(width: 8, str: objectOf(stocklist1: stocklist[index]),var1: 1)
                ))
      }
}

public func diplaystocks()
{
    print("Sr.No"
          ,addSpaces(width: 17, str: "Number of Shares",var1: 0)
          ,addSpaces(width: 17, str: "Purchase Price",var1: 0)
          ,addSpaces(width: 17, str: "Current Price",var1: 0)
          ,addSpaces(width: 17, str: "Cost in Dollars",var1: 0)
          ,addSpaces(width: 17, str: "Value in Dollars",var1: 0)
          ,addSpaces(width: 17, str: "Company name",var1: 0)
          ,addSpaces(width: 17, str: "Share Type",var1: 0) )
    
    print(String (repeating: Character("="), count :132))
    if (stocklist.isEmpty)
    {
     print("No Stocks available !")
    }
    else
    {
        for count in 0...stocklist.count-1
        {
            print (String(format: "%5d%18d%@%@%@%@%@%@",
                (count+1),
                stocklist[count].numberOfShares,
                          addSpaces(width: 18, str: numberFormat(number: stocklist[count].purchaseSharePrice),var1: 0),
                          addSpaces(width: 18, str: numberFormat(number: stocklist[count].currentSharePrice),var1: 0),
                          addSpaces(width: 18, str: numberFormat(number: stocklist[count].costInDollars()),var1: 0),
                          addSpaces(width: 18, str: numberFormat(number: stocklist[count].valueInDollars()),var1: 0),
                          addSpaces(width: 18, str: stocklist[count].companyName,var1: 0),
                          addSpaces(width: 8, str: objectOf(stocklist1: stocklist[count]),var1: 1)
                ))
        }
    }
}




