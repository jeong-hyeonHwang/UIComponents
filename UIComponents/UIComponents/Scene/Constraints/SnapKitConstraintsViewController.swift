//
//  SnapKitConstraintsViewController.swift
//  UIComponents
//
//  Created by 황정현 on 2023/03/17.
//

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
            make.top.equalTo(view.snp.bottom)
            make.top.equalTo(view.snp.leading)
            make.top.equalTo(view.snp.trailing)
            make.top.equalTo(view.snp.centerX)
            make.top.equalTo(view.snp.centerY)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
    }

}
