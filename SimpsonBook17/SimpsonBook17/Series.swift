//
//  Series.swift
//  SimpsonBook17
//
//  Created by Yavuz Güner on 21.02.2022.
//

import Foundation
import UIKit

class Movies{
    var name : String
    var year : String
    var image = UIImage() //UIImage yoksa eğer UIKit'i import etmemiz lazım.
    
    init(movieName:String, movieYear:String, movieImage:UIImage){
        name = movieName
        year = movieYear
        image = movieImage
        
    }
    
}
