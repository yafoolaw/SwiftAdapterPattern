//
//  CommanAdapter.swift
//  AdapterPattern
//
//  Created by FrankLiu on 15/12/17.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

// 对象适配器

class CommanAdapter: ProfileProtocol {
    
    var model : AnyObject
    
    init(model : AnyObject) {
        
        self.model = "Error Model"
        
        if model.dynamicType == StudentModel.self {
        
            self.model = model as! StudentModel
            
        } else if model.dynamicType == TeacherModel.self {
        
            self.model = model as! TeacherModel
        }
    }

    var name : String {
        
        get {

            if self.model.dynamicType == StudentModel.self {
            
                let studentModel = model as! StudentModel
                
                return studentModel.firstName + " " + studentModel.lastName
                
            } else if self.model.dynamicType == TeacherModel.self {
            
                let teacherModel = model as! TeacherModel
                
                return teacherModel.teacherName
            }
            
            return "Error Name"
        }
    }
    
    var age : String {
        
        get {
            
            if self.model.dynamicType == StudentModel.self {
                
                let studentModel = model as! StudentModel
                
                return "\(studentModel.studentAge)"
                
            } else if self.model.dynamicType == TeacherModel.self {
                
                let teacherModel = model as! TeacherModel
                
                return "\(teacherModel.teacherAge)"
            }
            
            return "Error Age"
        }
    }
    
    var description : String {
        
        get {
            
            if self.model.dynamicType == StudentModel.self {
                
                let studentModel = model as! StudentModel
                
                return studentModel.hobby
                
            } else if self.model.dynamicType == TeacherModel.self {
                
                let teacherModel = model as! TeacherModel
                
                return teacherModel.major
            }
            
            return "Error Description"
        }
    }
    
}
