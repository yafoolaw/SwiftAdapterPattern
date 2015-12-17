//
//  ViewController.swift
//  AdapterPattern
//
//  Created by FrankLiu on 15/12/15.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cardView : CardView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.buildCardView()
        
        // 我们要实现一个名片,但是model提供的数据并不能直接给CardView使用,这样的情况就需要我们使用适配器模式
        // 我们定义一个协议来满足CardView对数据的要求,并为CardView添加方法 loadData(data : ProfileProtocol)来加载数据
        
        self.useClassAdapter()
        
//        self.useObjectAdapter()
    }
    
    /**
     创建名片View
     */
    func buildCardView() {
    
        self.cardView = CardView(frame: CGRect(x: 50, y: 50, width: 250, height: 200))
        self.view.addSubview(self.cardView)
    }
    
    /**
     使用类适配器
     */
    func useClassAdapter() {
    
        let studentModel = StudentModelAdapter()
        studentModel.firstName  = "Jim"
        studentModel.lastName   = "Green"
        studentModel.studentAge = 17
        studentModel.hobby      = "Play BasketBall"
        
        self.cardView.loadData(studentModel)
    }
    
    /**
     使用对象适配器
     */
    func useObjectAdapter() {
    
        let teacherModel = TeacherModel()
        teacherModel.teacherName = "Steve Jobs"
        teacherModel.teacherAge  = 45
        teacherModel.major       = "Coding"
        
        let commonAdapter = CommanAdapter(model: teacherModel)
        
        self.cardView.loadData(commonAdapter)
    }
}

