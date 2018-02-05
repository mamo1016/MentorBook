//
//  ViewController.swift
//  MentorBook
//
//  Created by 上田　護 on 2017/10/28.
//  Copyright © 2017年 上田　護. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mentorArray: [Mentor] = []

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たんてい", imageName: "taithi.JPG", course: "webS,wedD"))
        
        setUI()
        print(mentorArray.count)//配列の要素数を表示

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        if index < 0{
            index = mentorArray.count - 1
        }

        setUI()
    }
    
    @IBAction func tugi(){
        index = index + 1
        if index == mentorArray.count {
            index = 0
        }

        setUI()
    }

}

