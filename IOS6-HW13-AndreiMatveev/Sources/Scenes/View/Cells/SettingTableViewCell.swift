//
//  SettingTableViewCell.swift
//  IOS6-HW13-AndreiMatveev
//
//  Created by Владелец on 02.06.2022.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    static let identifier = "SettingTableViewCell"
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        
        addSubviewsForAutoLayout([
            iconContainer,
            iconImageView,
            label
        ])
        
        NSLayoutConstraint.activate([
            iconContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 17),
            iconContainer.heightAnchor.constraint(equalToConstant: 30),
            iconContainer.widthAnchor.constraint(equalToConstant: 30),
            
            iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23),
            iconImageView.heightAnchor.constraint(equalToConstant: 20),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 64),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -38),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Сonfiguration
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
    }
    
    public func configure(with model: SettingsOptions) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
}
