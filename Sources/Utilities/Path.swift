//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Package Collection Generator open source project
//
// Copyright (c) 2021 Apple Inc. and the Swift Package Collection Generator project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Swift Package Collection Generator project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Foundation
import TSCBasic

public func ensureAbsolute(path: String) -> AbsolutePath {
    do {
        return try AbsolutePath(validating: path)
    } catch {
        return AbsolutePath(path, relativeTo: AbsolutePath(FileManager.default.currentDirectoryPath))
    }
}
