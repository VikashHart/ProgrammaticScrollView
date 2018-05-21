//
//  ScrollViewView.swift
//  ScrollViewSampleProject
//
//  Created by Vikash Hart on 5/21/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ScrollViewView: UIView {
    
    // Programmatic Objects
    
    // This label is here to show how to write constraints in relation to a scroll view object.
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "This is a scroll view below"
        label.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // ScrollView
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .clear
        sv.delaysContentTouches = false
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //ContainerView
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // ContainerView objects
    lazy var swiftImageView: UIImageView = {
        let photo = UIImageView()
        photo.image = #imageLiteral(resourceName: "swift-logo")
        photo.contentMode = .scaleAspectFit
        photo.layer.masksToBounds = true
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    lazy var swiftTextLabel: UILabel = {
        let label = UILabel()
        label.text = "The image above is the Swift logo."
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var appleImageView: UIImageView = {
        let photo = UIImageView()
        photo.image = #imageLiteral(resourceName: "apple-logo")
        photo.contentMode = .scaleAspectFit
        // The borderColor, borderWidth & masksToBounds create a border so the bounds of the image are easy to see when setting constraints.
        photo.layer.borderColor = UIColor.black.cgColor
        photo.layer.borderWidth = 1
        photo.layer.masksToBounds = true
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    lazy var appleTextLabel: UILabel = {
        let label = UILabel()
        label.text = "The image above is the Apple logo."
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // The code from line 90 to 98 sets the frame of the view so that you dont need to do it in the view controller when you add the subview.
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupHeaderLabel()
        setupScrollView()
        setupContainerView()
        setupSwiftImageView()
        setupSwiftTextLabel()
        setupAppleImageView()
        setupAppleTextLabel()
    }
    
    // The constants and multiplier values are purely here for asthetics.
    
    private func setupHeaderLabel() {
        addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            headerLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            headerLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupScrollView() {
        addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 8),
            scrollView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            scrollView.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
    
    private func setupContainerView() {
        scrollView.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            ])
    }
    
    private func setupSwiftImageView() {
        containerView.addSubview(swiftImageView)
        NSLayoutConstraint.activate([
            swiftImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            swiftImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            swiftImageView.heightAnchor.constraint(equalTo: swiftImageView.widthAnchor, multiplier: 1),
            swiftImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupSwiftTextLabel() {
        containerView.addSubview(swiftTextLabel)
        NSLayoutConstraint.activate([
            swiftTextLabel.topAnchor.constraint(equalTo: swiftImageView.bottomAnchor, constant: 32),
            swiftTextLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            swiftTextLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupAppleImageView() {
        containerView.addSubview(appleImageView)
        NSLayoutConstraint.activate([
            appleImageView.topAnchor.constraint(equalTo: swiftTextLabel.bottomAnchor, constant: 32),
            appleImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            appleImageView.heightAnchor.constraint(equalTo: appleImageView.widthAnchor, multiplier: 1),
            appleImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
    
    private func setupAppleTextLabel() {
        containerView.addSubview(appleTextLabel)
        NSLayoutConstraint.activate([
            appleTextLabel.topAnchor.constraint(equalTo: appleImageView.bottomAnchor, constant: 32),
            appleTextLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9),
            appleTextLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
            appleTextLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
    }
}


