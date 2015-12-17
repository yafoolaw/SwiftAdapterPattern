//
//  StudentModelAdapter.swift
//  AdapterPattern
//
//  Created by FrankLiu on 15/12/17.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

// StudentModel 类适配器

class StudentModelAdapter: StudentModel, ProfileProtocol {

    var name : String {
    
        get {
        
            return self.firstName + " " + self.lastName
        }
    }
    
    var age : String {
    
        get {
        
            return "\(self.studentAge)"
        }
    }
    
    var description : String {
    
        get {
        
            return self.hobby
        }
    }
    
}
