//
//  TeacherModelAdapter.swift
//  AdapterPattern
//
//  Created by FrankLiu on 15/12/17.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

// TeacherModel 类适配器

class TeacherModelAdapter: TeacherModel, ProfileProtocol {

    var name : String {
        
        get {
            
            return self.teacherName
        }
    }
    
    var age : String {
        
        get {
            
            return "\(self.teacherAge)"
        }
    }
    
    var description : String {
        
        get {
            
            return self.major
        }
    }
}
