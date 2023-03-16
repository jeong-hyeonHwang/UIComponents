//
//  NSLayoutConstraintsViewController.swift
//  UIComponents
//
//  Created by 황정현 on 2023/03/17.
//  Constraints: top - bottom - leading - trailing - centerX - centerY - width - height

import UIKit

final class NSLayoutConstraintsViewController: UIViewController {

    private let label1 = UILabel()
    private let label2 = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CASE1. NSLayoutConstraint.active
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.topAnchor),
            label1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label1.widthAnchor.constraint(equalToConstant: 100),
            label1.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // CASE2. NSLayoutConstraint.isActive
        view.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        label2.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        label2.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
