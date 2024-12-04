import UIKit
import Combine

public protocol SceneDelegateReadable {
    var willConnectNotification: AnyPublisher<Notification, Never> { get }
    var didDisconnectNotification: AnyPublisher<Notification, Never> { get }
    var didActivateNotification: AnyPublisher<Notification, Never> { get }
    var willDeactivateNotification: AnyPublisher<Notification, Never> { get }
    var willEnterForegroundNotification: AnyPublisher<Notification, Never> { get }
    var didEnterBackgroundNotification: AnyPublisher<Notification, Never> { get }
}

public extension SceneDelegateReadable {
    var willConnectNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIScene.willConnectNotification)
            .eraseToAnyPublisher()
    }
    
    var didDisconnectNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIScene.didDisconnectNotification)
            .eraseToAnyPublisher()
    }
    
    var didActivateNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIScene.didActivateNotification)
            .eraseToAnyPublisher()
    }
    
    var willDeactivateNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIScene.willDeactivateNotification)
            .eraseToAnyPublisher()
    }
    
    var willEnterForegroundNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIScene.willEnterForegroundNotification)
            .eraseToAnyPublisher()
    }
    
    var didEnterBackgroundNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIScene.didEnterBackgroundNotification)
            .eraseToAnyPublisher()
    }
}
