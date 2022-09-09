// Generated using Sourcery 1.8.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif
















class CameraMock: Camera {

    //MARK: - start

    var startCallsCount = 0
    var startCalled: Bool {
        return startCallsCount > 0
    }
    var startClosure: (() -> Void)?

    func start() {
        startCallsCount += 1
        startClosure?()
    }

    //MARK: - stop

    var stopCallsCount = 0
    var stopCalled: Bool {
        return stopCallsCount > 0
    }
    var stopClosure: (() -> Void)?

    func stop() {
        stopCallsCount += 1
        stopClosure?()
    }

    //MARK: - capture

    var captureCallsCount = 0
    var captureCalled: Bool {
        return captureCallsCount > 0
    }
    var captureReceivedCompletion: ((UIImage?) -> Void)?
    var captureReceivedInvocations: [((UIImage?) -> Void)] = []
    var captureClosure: ((@escaping (UIImage?) -> Void) -> Void)?

    func capture(_ completion: @escaping (UIImage?) -> Void) {
        captureCallsCount += 1
        captureReceivedCompletion = completion
        captureReceivedInvocations.append(completion)
        captureClosure?(completion)
    }

    //MARK: - rotate

    var rotateCallsCount = 0
    var rotateCalled: Bool {
        return rotateCallsCount > 0
    }
    var rotateClosure: (() -> Void)?

    func rotate() {
        rotateCallsCount += 1
        rotateClosure?()
    }

}
