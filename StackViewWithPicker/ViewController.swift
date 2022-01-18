//
//  ViewController.swift
//  StackViewWithPicker
//
//  Created by Vanesa Korbenfeld on 13/01/2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    let firstButton = UIButton()

    let secondButton = UIButton()

    let thirdButton = UIButton()

    let loremIpsumLabel = UILabel()
    
    let optionArray:[String] = ["option 1","option 2"]
    
    let pickerArray = UIPickerView()

    let inputTextfield = UITextField()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        firstButton.setTitle("First Button", for: .normal)
        firstButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        firstButton.setTitleColor(.systemBlue, for: .normal)
        firstButton.addTarget(self, action: #selector(onTappedFirstButton), for: .touchUpInside)
        
        secondButton.setTitle("Second Button", for: .normal)
        secondButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        secondButton.setTitleColor(.systemBlue, for: .normal)
        secondButton.addTarget(self, action: #selector(onTappedSecondButton), for: .touchUpInside)
        
        thirdButton.setTitle("Third Button", for: .normal)
        thirdButton.setTitleColor(.systemBlue, for: .normal)
        thirdButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        thirdButton.addTarget(self, action: #selector(onTappedThirdButton), for: .touchUpInside)
        
        loremIpsumLabel.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's."
        loremIpsumLabel.font = UIFont.systemFont(ofSize: 17)
        loremIpsumLabel.textAlignment = .center
        loremIpsumLabel.textColor = UIColor.black
        loremIpsumLabel.lineBreakMode = .byWordWrapping
        loremIpsumLabel.numberOfLines = 0
      
        pickerArray.delegate = self
        pickerArray.dataSource = self
        pickerArray.center = self.view.center
        pickerArray.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        inputTextfield.placeholder = "option 3"
        inputTextfield.textAlignment = .center
        inputTextfield.font = UIFont.systemFont(ofSize: 14)
        inputTextfield.borderStyle = .roundedRect
        inputTextfield.delegate = self
        inputTextfield.addTarget(self, action: #selector(self.inputTextFieldChanged), for: .editingChanged)
        
        let stackView = UIStackView(arrangedSubviews: [firstButton, secondButton, thirdButton, loremIpsumLabel, pickerArray, inputTextfield])
        stackView.distribution = .fill
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = UIStackView.Alignment.fill
        stackView.spacing = 16.0
        stackView.setCustomSpacing(28, after: thirdButton)
        stackView.setCustomSpacing(5, after: loremIpsumLabel)

        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(stackView)

        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
    }
    
    @objc func onTappedFirstButton() {
        
    }
    
    @objc func onTappedSecondButton() {
        
    }
    
    @objc func onTappedThirdButton() {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return optionArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       let row = optionArray[row]
       return row
    }
    
    @objc
    func inputTextFieldChanged() {
        if inputTextfield.text == nil || inputTextfield.text == "" {
            pickerArray.isUserInteractionEnabled = true
            pickerArray.setValue(UIColor.black, forKey: "textColor")
        } else {
            pickerArray.isUserInteractionEnabled = false
            pickerArray.setValue(UIColor.lightGray, forKey: "textColor")
        }
    }
}



