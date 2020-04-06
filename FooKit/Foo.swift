//
//  Fo.swift
//  FooKit
//
//  Created by Paul Ossenbruggen on 4/5/20.
//  Copyright © 2020 Paul Ossenbruggen. All rights reserved.
//

import Foundation
import BarKit

public struct Foo {
    public init() {
    }
    
    public func foo() {
        print("foo")
        Bar().bar()
    }
}
