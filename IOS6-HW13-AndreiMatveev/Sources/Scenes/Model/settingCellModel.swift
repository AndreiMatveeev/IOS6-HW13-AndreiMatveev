//
//  settingCellModel.swift
//  IOS6-HW13-AndreiMatveev
//
//  Created by Владелец on 01.07.2022.
//

import UIKit

struct Sections {
    let options: [SettingsOptionsType]
}

enum SettingsOptionsType {
    case staticCell(model: SettingsOptions)
    case switchCell(model: SettingsSwitchOptions)
}

struct SettingsSwitchOptions {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
    var isOn: Bool
}

struct SettingsOptions {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
}

var models = [Sections]()

class SettingCellModel {
    
    func configure() {
        models.append(Sections(options: [
            .switchCell(model: SettingsSwitchOptions(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .yellow, handler: {
                print("Нажата ячейка Авиарежим")
            }, isOn: true)),
            .staticCell(model: SettingsOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue) {
                print("Нажата ячейка Wi-Fi")
            }),
            .staticCell(model: SettingsOptions(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackgroundColor: .systemBlue) {
                print("Нажата ячейка Bluetooth")
            }),
            .switchCell(model: SettingsSwitchOptions(title: "Мобильные данные", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, handler: {
                print("Нажата ячейка Мобильные данные")
            }, isOn: false)),
            .staticCell(model: SettingsOptions(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen) {
                print("Нажата ячейка Режим модема")
             })
        ]))
        
        models.append(Sections(options: [
            .staticCell(model: SettingsOptions(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill"), iconBackgroundColor: .systemRed) {
                print("Нажата ячейка Уведомления")
             }),
            .staticCell(model: SettingsOptions(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemPink) {
                print("Нажата ячейка Звуки, тактильные сигналы")
             }),
            .staticCell(model: SettingsOptions(title: "Фокусирование", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemPurple) {
                            print("Нажата ячейка Фокусирование")
            }),
                .staticCell(model: SettingsOptions(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemPurple) {
                print("Нажата ячейка Экранное время")
             })
        ]))
        
        models.append(Sections(options: [
            .staticCell(model: SettingsOptions(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray) {
                print("Нажата ячейка Основные")
             }),
            .staticCell(model: SettingsOptions(title: "Пункт управления", icon: UIImage(systemName: "slider.horizontal.3"), iconBackgroundColor: .systemGray) {
                print("Нажата ячейка Пункт управления")
             }),
            .staticCell(model: SettingsOptions(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue) {
                            print("Нажата ячейка Экран и яркость")
            }),
                .staticCell(model: SettingsOptions(title: "Экран домой", icon: UIImage(systemName: "iphone.homebutton"), iconBackgroundColor: .systemPurple) {
                print("Нажата ячейка Экран домой")
             }),
            .staticCell(model: SettingsOptions(title: "Универсальный доступ", icon: UIImage(systemName: "person.circle"), iconBackgroundColor: .systemBlue) {
                print("Нажата ячейка Универсальный доступ")
             }),
            .staticCell(model: SettingsOptions(title: "Обои", icon: UIImage(systemName: "command.circle"), iconBackgroundColor: .systemCyan) {
                print("Нажата ячейка Обои")
             }),
            .staticCell(model: SettingsOptions(title: "Аккумулятор", icon: UIImage(systemName: "battery.100"), iconBackgroundColor: .systemGreen) {
                            print("Нажата ячейка Аккумулятор")
            }),
                .staticCell(model: SettingsOptions(title: "Конфеденциальность", icon: UIImage(systemName: "hand.raised"), iconBackgroundColor: .systemBlue) {
                print("Нажата ячейка Конфеденциальность")
             })
        ]))
    }
    
}
