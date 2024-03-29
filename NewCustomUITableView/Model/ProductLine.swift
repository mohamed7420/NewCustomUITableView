//
//  ProductLine.swift
//  NewCustomUITableView
//
//  Created by Mohamed on 8/16/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ProductLine {
    
    var products: [Product]
    var name: String
    
    init(name: String , includeProducts: [Product]){
        
        self.products = includeProducts
        self.name = name
    }
    
    class func getProductLineArray() ->[ProductLine]{
        
        
        return [iDevices() , mac() , software() , iPod() , iCloudAndApplePay()]
        
    }
    private class func iDevices() -> ProductLine {
        //  (1) iDevices: Apple Watch, iPad, iPhone, iOS
        var products = [Product]()
        
        products.append(Product(imageProduct: "Apple Watch", title: "apple-watch", description: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking."))
        products.append(Product(imageProduct: "iPad", title: "ipad-air2", description: "iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there."))
        products.append(Product(imageProduct: "iPhone", title: "iphone6", description: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays."))
        products.append(Product(imageProduct: "iOS", title: "iOS8", description: "iOS is the world’s most advanced operating system. Its easy-to-use interface, amazing features, and rock-solid stability are built into every iPhone, iPad, and iPod touch."))
        
        return ProductLine(name: "iDevices", includeProducts: products)
    }
    
    //  (2) Mac: MacBook, MacBook Pro with Retina Display, MacBook Air, iMac
    //           Mac Pro, MacBook Pro, Mac Mini, Display, Airport Extreme,
    //           AirPort Time Capsule, AirPort Express, Magic Trackpad
    //           Magic Mouse, Apple Keyboard, Apple Battery Charger
    
    private class func mac() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageProduct: "MacBook", title: "macbook", description: "The thinnest and lightest Mac ever with every component meticulously redesigned to create a Mac that is just two pounds and 13.1 mm thin. "))
        products.append(Product(imageProduct: "MacBook Pro 13 inch",title: "macbook-pro-13", description: "MacBook Pro features the latest dual-core and quad-core processors, and faster graphics to deliver the perfect combination of pro performance and extreme portability."))
        products.append(Product(imageProduct: "MacBook Pro with Retina Display", title: "macbook-pro-retina", description: "A stunning high-resolution display, an amazing thin and light design, and the latest technology to power through the most demanding projects."))
        products.append(Product(imageProduct: "MacBook Air", title: "macbook-air", description: "All day battery life, fourth generation Intel Core processors with faster graphics, 802.11ac Wi-Fi and flash storage that is up to 45 percent faster than the previous generation."))
        products.append(Product(imageProduct: "iMac", title: "imac-5k", description: "The 27-inch iMac with Retina 5K display features a breathtaking 14.7 million pixel display so text appears sharper than ever, videos are unbelievably lifelike."))
        products.append(Product(imageProduct: "Mac Pro", title: "mac-pro", description: "Designed around a revolutionary unified thermal core, the Mac Pro introduces a completely new pro desktop architecture and design that is optimized for performance inside and out."))
        products.append(Product(imageProduct: "Mac Mini", title: "mac-mini", description: "With its sleek aluminum design, a removable bottom panel for easy access to memory, and a space-saving built-in power supply, Mac mini is pretty incredible."))
        products.append(Product(imageProduct: "Displays", title: "display", description: "The 27-inch Apple LED Cinema Display supersizes your view with an incredible 2560-by-1440 resolution."))
        products.append(Product(imageProduct: "Airport Extreme", title: "airport-extreme", description: "Featuring 802.11ac Wi-Fi for up to three times faster performance."))
        
        return ProductLine(name: "Mac", includeProducts: products)
    }
    
    //  (3) Software: OS X, iLife, iWork, Logic Pro X, Final Cut Pro X, Aperture
    
    private class func software() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageProduct: "OS X", title: "os-x", description: "Built on a rock-solid UNIX foundation, OS X is engineered to take full advantage of the technologies in every new Mac."))
        products.append(Product(imageProduct: "iLife", title: "ilife", description: "Do more with movies and music than you ever thought possible."))
        products.append(Product(imageProduct: "iWork", title: "iwork", description: " iWork is the easiest way to create great-looking documents, spreadsheets, and presentations. "))
        products.append(Product(imageProduct: "Logic Pro X", title: "logic-pro-x", description: "Logic Pro X, the most advanced version of Logic Pro to date, with a new interface designed for pros."))
        products.append(Product(imageProduct: "Final Cut Pro X", title: "A revolutionary new version of the world’s most popular Pro video editing software which completely reinvents video editing.", description: "final-cut-pro-x"))
        products.append(Product(imageProduct: "Aperture", title: "aperture", description: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking."))
        
        return ProductLine(name: "Software", includeProducts: products)
    }
    
    //  (4) iPod: Apple TV, iPod nano, iPod shuffle, iPod touch, iTunes
    
    private class func iPod() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageProduct: "iPod nano", title: "ipod-nano", description: "The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors."))
        products.append(Product(imageProduct: "iPod shuffle", title: "ipod-shuffle", description: "Crafted from a single piece of aluminium and polished to a beautiful shine, iPod shuffle feels solid, sleek and durable."))
        products.append(Product(imageProduct: "iPod touch", title: "ipod-touch", description: "Featuring a brilliant 4-inch Retina display; a 5-megapixel iSight camera with 1080p HD video recording."))
        products.append(Product(imageProduct: "iTunes", title: "itunes", description: "A free application for your Mac or PC, iTunes organizes and plays your digital music and video on your computer."))
        products.append(Product(imageProduct: "Apple TV", title: "apple-tv", description: "Access to tons of great HD content in a tiny package. Enjoy blockbuster movies, TV shows, live sports and news, your music, photos, and more — right on your high-definition TV."))
        
        return ProductLine(name: "iPod and iTunes", includeProducts: products)
    }
    
    //  (5) Services: iCloud, Apple Pay
    
    private class func iCloudAndApplePay() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageProduct: "iCloud", title: "icloud", description: "The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors."))
        products.append(Product(imageProduct: "Apple Pay", title: "apple-pay", description: "A breakthrough set of free new cloud services that work seamlessly with applications on your iPhone®, iPad®, iPod touch®, Mac® or PC to automatically and wirelessly store your content in iCloud and automatically and wirelessly push it to all your devices. "))
        
        return ProductLine(name: "iCloud and Apple Pay", includeProducts: products)
    }
    
    
}
