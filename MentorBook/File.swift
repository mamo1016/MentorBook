//
//  File.swift
//  MentorBook
//
//  Created by 上田　護 on 2017/10/28.
//  Copyright © 2017年 上田　護. All rights reserved.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    
    init(name: String, imageName: String, course: String!){
        self.name = name
        self.imageName = imageName
        self.course = course
    }

    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }

}
