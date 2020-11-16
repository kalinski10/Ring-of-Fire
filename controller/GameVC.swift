//
//  GameVC.swift
//  Ring of Fire
//
//  Created by Jakub Gawecki on 15/11/2020.
//

import UIKit

class GameVC: UIViewController {
    
    
    var cardImage       = UIImageView()
    var kingImage1       = UIImageView()
    var kingImage2      = UIImageView()
    var kingImage3      = UIImageView()
    var kingImage4      = UIImageView()
    var restartButton   = RestartButton(backgroundColor: .systemRed, text: "Stop!", ofsize: 30)
    var newGameButton   = RestartButton(backgroundColor: .systemBlue, text: "Let'play again!", ofsize: 20)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureCardImage()
        configureRestartButton()
        configureKingImage4()
        configureKingImage3()
        configureKingImage2()
        configureKingImage1()
        configureNewGameButton()
        
    }
    
    func configureCardImage() {
        view.addSubview(cardImage)
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardImage.image = UIImage(named: "KS")
        
        NSLayoutConstraint.activate([
            cardImage.heightAnchor.constraint(equalToConstant: 450),
            cardImage.widthAnchor.constraint(equalToConstant: 300),
            cardImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            cardImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
    }
    
    func configureKingImage1() {
        view.addSubview(kingImage1)
        kingImage1.translatesAutoresizingMaskIntoConstraints = false
        kingImage1.image = UIImage(named: "KS")
        
        NSLayoutConstraint.activate([
            kingImage1.heightAnchor.constraint(equalToConstant: 75),
            kingImage1.widthAnchor.constraint(equalToConstant: 50),
            kingImage1.centerXAnchor.constraint(equalTo: kingImage2.centerXAnchor, constant: -10),
            kingImage1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    func configureKingImage2() {
        view.addSubview(kingImage2)
        kingImage2.translatesAutoresizingMaskIntoConstraints = false
        kingImage2.image = UIImage(named: "KS")
        
        NSLayoutConstraint.activate([
            kingImage2.heightAnchor.constraint(equalToConstant: 75),
            kingImage2.widthAnchor.constraint(equalToConstant: 50),
            kingImage2.centerXAnchor.constraint(equalTo: kingImage3.centerXAnchor, constant: -10),
            kingImage2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    func configureKingImage3() {
        view.addSubview(kingImage3)
        kingImage3.translatesAutoresizingMaskIntoConstraints = false
        kingImage3.image = UIImage(named: "KS")
        
        NSLayoutConstraint.activate([
            kingImage3.heightAnchor.constraint(equalToConstant: 75),
            kingImage3.widthAnchor.constraint(equalToConstant: 50),
            kingImage3.centerXAnchor.constraint(equalTo: kingImage4.centerXAnchor, constant: -10),
            kingImage3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        ])
    }
    
    func configureKingImage4() {
        view.addSubview(kingImage4)
        kingImage4.translatesAutoresizingMaskIntoConstraints = false
        kingImage4.image = UIImage(named: "KS")
        
        NSLayoutConstraint.activate([
            kingImage4.heightAnchor.constraint(equalToConstant: 75),
            kingImage4.widthAnchor.constraint(equalToConstant: 50),
            kingImage4.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor),
            kingImage4.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }

    
    func configureRestartButton() {
        view.addSubview(restartButton)
        
        NSLayoutConstraint.activate([
            restartButton.heightAnchor.constraint(equalToConstant: 75),
            restartButton.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor),
            restartButton.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor),
            restartButton.topAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: 30),
        ])
    }
    
    func configureNewGameButton() {
        view.addSubview(newGameButton)
        
        NSLayoutConstraint.activate([
            newGameButton.heightAnchor.constraint(equalToConstant: 70),
            newGameButton.widthAnchor.constraint(equalToConstant: 180),
            newGameButton.centerYAnchor.constraint(equalTo: kingImage1.centerYAnchor),
            newGameButton.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor)
            
        ])
    }

}
