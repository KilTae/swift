//
//  Country.swift
//  Country List
//
//

import Foundation

struct Country {
    var flag = "";
    var name = "";
    var year = 0;
    var population = 0.0;
    var region = "";
    
}

//["🇰🇷","🇱🇷","🇻🇳","🇵🇲"]


func getCountries() -> [Country] {
    let korea = Country(flag: "🇰🇷", name: "South Korea", year: 1900, population: 123.4, region: "Asia");
    let America = Country(flag: "🇱🇷", name: "America", year: 12345, population: 2345.3, region: "America")
    let vietnam = Country(flag: "🇻🇳", name: "vietnam", year: 12342, population: 2345.2, region: "Asia")
    let stpierre = Country(flag: "🇵🇲", name: "st.pierre", year: 2345, population: 234.2, region: "Europe")
    return [korea,America,vietnam,stpierre];
    
}
