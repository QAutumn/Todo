//
//  TableViewCell.swift
//  Todo
//
//  Created by 澈水 on 2022/4/7.
//

import UIKit
import SnapKit

class TodoCell: UITableViewCell {

    var label = UILabel()
    var btn = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        label.text = ""
        label.numberOfLines = 0

        btn.setImage(UIImage(systemName: "circle"), for: .normal)
        btn.setImage(UIImage(systemName: "checkmark.circle"), for: .selected)
        btn.tintColor = .systemOrange
        
        self.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalTo(60)
            make.right.equalToSuperview()
            make.left.equalToSuperview().offset(50)
        }
        
        self.addSubview(btn)
        btn.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.centerY.equalToSuperview()
            make.size.equalTo(60)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
