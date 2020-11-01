//
//  ViewController.swift
//  DigitalFactoryCalculatorApp
//
//  Created by Ruoming Gao on 10/29/20.
//  Copyright © 2020 Ruoming Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = OperationViewModel()
    var storage: String?
    var isOperationTap: Bool?
    var operation: Operation?
    var runningString = ""
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = .white
        return label
    }()

    let stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    let stackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    let stackView7: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    let stackViewSin: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    let stackView0: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
//        stackView.alignment = UIStackView.Alignment.fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    let button1: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.tag = 1
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        return button
    }()
    
    let button2: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 2
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button3: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 3
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button4: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 4
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button5: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 5
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button6: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 6
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button7: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 7
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button8: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 8
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button9: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 9
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let button0: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 0
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(showNumber(sender:)), for: .touchUpInside)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonDot: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(pressDot(sender:)), for: .touchUpInside)
        button.tag = 10
        button.backgroundColor = .darkGray
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonAdd: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(add(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonSubtract: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(minus(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonMultiply: UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(mutiply(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonDivide: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(divide(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonEqual: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(equal(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonReset: UIButton = {
        let button = UIButton()
        button.setTitle("C", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(reset(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonSin: UIButton = {
        let button = UIButton()
        button.setTitle("Sin", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(getSinInDegree(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonCos: UIButton = {
        let button = UIButton()
        button.setTitle("Cos", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(getCosInDegree(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    let buttonTan: UIButton = {
        let button = UIButton()
        button.setTitle("Tan", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(getTanInDegree(sender:)), for: .touchUpInside)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 45
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .black
        view.addSubview(mainStackView)
        view.addSubview(resultLabel)
        let button1Row = [button1, button2, button3, buttonAdd]
        button1Row.forEach { (button) in
            stackView1.addArrangedSubview(button)
        }
        
        let button4Row = [button4, button5, button6, buttonSubtract]
        button4Row.forEach { (button) in
            stackView4.addArrangedSubview(button)
        }
        
        let button7Row = [button7, button8, button9, buttonMultiply]
        button7Row.forEach { (button) in
            stackView7.addArrangedSubview(button)
        }
        
        let buttonSinRow = [buttonSin, buttonCos, buttonTan, buttonDivide]
        buttonSinRow.forEach { (button) in
            stackViewSin.addArrangedSubview(button)
        }
        
        let button0Row = [button0, buttonDot, buttonReset, buttonEqual]
        button0Row.forEach { (button) in
            stackView0.addArrangedSubview(button)
        }
        
        let mainStackViewRow = [stackViewSin, stackView7, stackView4, stackView1, stackView0]
        mainStackViewRow.forEach { (stackView) in
            mainStackView.addArrangedSubview(stackView)
        }

        let viewsDict = [
            "mainStackView": mainStackView,
            "resultLabel": resultLabel
        ]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[resultLabel(100)]-[mainStackView]-|", options: [], metrics: nil, views: viewsDict))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainStackView]|", options: [], metrics: nil, views: viewsDict))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[resultLabel]-|", options: [], metrics: nil, views: viewsDict))

    }
    
    @objc func showNumber(sender: UIButton!) {
        if runningString.count <= 8 {
            runningString += "\(sender.tag)"
            resultLabel.text = runningString
        }
    }
    
    @objc func pressDot(sender: UIButton!) {
        if runningString.count <= 7 {
            if resultLabel.text == "0" {
                runningString = "0."
                resultLabel.text = runningString
            } else if !runningString.contains(".") {
                runningString += "."
                resultLabel.text = runningString
            }
        }
    }
    
    @objc func reset(sender: UIButton!) {
        resultLabel.text = "0"
        runningString = ""
        isOperationTap = false
    }
    
    func pressOperation() {
        if isOperationTap == true {
            equalOperation()
        } else {
            isOperationTap = true
        }
        storage = resultLabel.text
        runningString = ""
    }
    
    @objc func add(sender: UIButton!) {
        pressOperation()
        operation = .plus
    }
    
    @objc func minus(sender: UIButton!) {
        pressOperation()
        operation = .minus
    }
    
    @objc func divide(sender: UIButton!) {
        pressOperation()
        operation = .divide
    }
    
    @objc func mutiply(sender: UIButton!) {
        pressOperation()
        operation = .mutiply
    }
    
    @objc func getSinInDegree(sender: UIButton!) {
        guard let currentNumber =  Float(resultLabel.text ?? runningString) else { return }
        let result = viewModel.getSinDegree(currentNumber)
        resultLabel.text = result.clean
        storage = resultLabel.text
        runningString = ""
    }
    
    @objc func getCosInDegree(sender: UIButton!) {
        guard let currentNumber =  Float(resultLabel.text ?? runningString ) else { return }
        let result = viewModel.getCosDegree(currentNumber)
        resultLabel.text = result.clean
        storage = resultLabel.text
        runningString = ""
    }
    
    @objc func getTanInDegree(sender: UIButton!) {
        guard let currentNumber =  Float(resultLabel.text ?? runningString ) else { return }
        let result = viewModel.getTanDegree(currentNumber)
        resultLabel.text = result.clean
        storage = resultLabel.text
        runningString = ""
    }
    
    @objc func equal(sender: UIButton!) {
        equalOperation()
        isOperationTap = false
        runningString = ""
    }
    
    func equalOperation() {
        guard let firstNumber = Float(storage ?? "0"), let secondNumber = Float(resultLabel.text ?? runningString ) else { return }
        var result = Float()
        switch operation {
        case .plus:
            result = viewModel.plus(firstNumber, plusSecondNum: secondNumber)
        case .minus:
            result = viewModel.subtract(firstNumber, minusSecondNum: secondNumber)
        case .mutiply:
            result = viewModel.mutiply(firstNumber, mutiplySecondNum: secondNumber)
        case .divide:
            result = viewModel.divide(firstNumber, divideSecondNum: secondNumber)
        case .none:
            break
        }
        resultLabel.text = result.clean
        runningString = String(result)
    }
}

