//
//  SettingView.swift
//  IOS6-HW13-AndreiMatveev
//
//  Created by Владелец on 02.07.2022.
//

import UIKit

class SettingView: UIView {
    
    // MARK: - Properties
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        
        var userInfoHeader: UserInfoHeader
        let frame = CGRect(x: 0, y: 88, width: 40, height: 100)
        userInfoHeader = UserInfoHeader(frame: frame)
        table.tableHeaderView = userInfoHeader
        table.tableFooterView = UIView()
        
        return table
    }()
    
    // MARK: - Initialization
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .systemBackground
        setupTableView()
    }
    
    // MARK: - Settings
    
    func setupTableView() {
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
        ])
    }
}
