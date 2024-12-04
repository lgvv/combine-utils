import UIKit
import Combine

public protocol KeyboardReadable {
    var keyboardWillShowNotification: AnyPublisher<Notification, Never> { get }
    var keyboardDidShowNotification: AnyPublisher<Notification, Never> { get }
    var keyboardWillHideNotification: AnyPublisher<Notification, Never> { get }
    var keyboardDidHideNotification: AnyPublisher<Notification, Never> { get }
    
    var keyboardWillChangeFrameNotification: AnyPublisher<Notification, Never> { get }
    var keyboardDidChangeFrameNotification: AnyPublisher<Notification, Never> { get }
}

public extension KeyboardReadable {
    
    var keyboardWillShowNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardWillShowNotification)
            .eraseToAnyPublisher()
    }
    
    var keyboardDidShowNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardDidShowNotification)
            .eraseToAnyPublisher()
    }
    
    var keyboardWillHideNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardWillHideNotification)
            .eraseToAnyPublisher()
    }
    
    var keyboardDidHideNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardDidHideNotification)
            .eraseToAnyPublisher()
    }
    
    var keyboardFrameBeginUserInfoKey: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .eraseToAnyPublisher()
    }
    
    var keyboardWillChangeFrameNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .eraseToAnyPublisher()
    }
    
    var keyboardDidChangeFrameNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardDidChangeFrameNotification)
            .eraseToAnyPublisher()
    }
    
    
}
