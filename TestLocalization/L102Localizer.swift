//
//  L102Localizer.swift
//  TestLocalization
//
//  Created by Denny Mathew on 16/05/17.
//  Copyright © 2017 Denny Mathew. All rights reserved.
//

import Foundation

class L102Localizer: NSObject {
    
    class func swizzle() {
        
        methodSwizzleGivenClassName(cls: Bundle.self, originalSelector: #selector(Bundle.localizedString(forKey:value:table:)), alternateSelector: #selector(Bundle.specialLocalizedStringForKey(key:value:table:)))
    }
}

//Swizzle
func methodSwizzleGivenClassName(cls: AnyClass, originalSelector: Selector, alternateSelector: Selector) {
    
    let originalMethod: Method = class_getInstanceMethod(cls, originalSelector)
    let alternateMethod: Method = class_getInstanceMethod(cls, alternateSelector)
    
    if (class_addMethod(cls, originalSelector, method_getImplementation(alternateMethod), method_getTypeEncoding(alternateMethod))) {
        class_replaceMethod(cls, originalSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
    }
        
    else {
        method_exchangeImplementations(originalMethod, alternateMethod)
    }
}


extension Bundle {
    func specialLocalizedStringForKey(key: String, value: String?, table tableName: String?) -> String {
        
        let currentLanguage = L102Language.currentAppleLanguage()
        var bundle = Bundle()
        
        if let _path = Bundle.main.path(forResource: currentLanguage, ofType: "lproj") {
            bundle = Bundle(path: _path)!
        }
            
        else {
            let _path = Bundle.main.path(forResource: "Base", ofType: "lproj")!
            bundle = Bundle(path: _path)!
        }
        
        return (bundle.specialLocalizedStringForKey(key: key, value: value, table: tableName))
    }
}
