//
//  ViewController.swift
//  DynamicForm
//
//  Created by My MAC on 4/6/20.
//  Copyright © 2020 Bhavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i = 1
    var position = 180
    var textBox = UITextField()
    var arrayOfTextFields:[UITextField] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        CreateTittleLable()
        CreateForm()
        CreateButton()
        
    }
    
    func CreateTittleLable()
    {
        let tittleLable : UILabel = UILabel(frame: CGRect(x: 35, y: 100, width: 300, height: 40))
        tittleLable.text = "Login Form"
        tittleLable.textAlignment = .center
        tittleLable.textColor = UIColor.black
        self.view.addSubview(tittleLable)
    }

    func CreateForm()
    {
        
        for i in 1...2
        {
            textBox = UITextField(frame: CGRect(x: 35, y: position, width: 300, height: 40))
            textBox.borderStyle = .roundedRect
            self.arrayOfTextFields.append(textBox)
            self.view.addSubview(textBox)
            position += 50
            
            if i == 1
            {
                textBox.placeholder = "User Name"
                textBox.tag = 1
            }
            else if i == 2
            {
                textBox.placeholder = "Password"
                textBox.tag = 2
            }
        }
     }
    
    func CreateButton()
    {
        let ActionButton : UIButton = UIButton(frame: CGRect(x: 35, y: position + 20, width: 300, height: 40))
        ActionButton.setTitle("Login Now", for: .normal)
        ActionButton.setTitleColor(UIColor.white, for: .normal)
        ActionButton.backgroundColor = UIColor.darkGray
        ActionButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(ActionButton)
    }
    
    @objc func buttonAction()
    {
        print("Button Clicked")
        
      for textField in arrayOfTextFields{
          print(textField.text)
      }
        
    }

}

