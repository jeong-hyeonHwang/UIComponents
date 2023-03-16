//
//  SnapKitConstraintsViewController.swift
//  UIComponents
//
//  Created by 황정현 on 2023/03/17.
//  Constraints: top - bottom - leading - trailing - centerX - centerY - width - height

import SnapKit
import UIKit

final class SnapKitConstraintsViewController: UIViewController {

    private let label1 = UILabel()
    private let label2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.bottom.equalTo(view.snp.bottom)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
    }

}
