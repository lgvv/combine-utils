import UIKit
import Combine

public protocol AppDelegateReadable {
    var didFinishLaunchingNotification: AnyPublisher<Notification, Never> { get }
    var willTerminateNotification: AnyPublisher<Notification, Never> { get }
    var didBecomeActiveNotification: AnyPublisher<Notification, Never> { get }
    var willResignActiveNotification: AnyPublisher<Notification, Never> { get }
    var didEnterBackgroundNotification: AnyPublisher<Notification, Never> { get }
    var willEnterForegroundNotification: AnyPublisher<Notification, Never> { get }
    
    var protectedDataAvailableNotification: AnyPublisher<Notification, Never> { get }
    var protectedDataUnavailableNotification: AnyPublisher<Notification, Never> { get }
    var significantTimeChangeNotification: AnyPublisher<Notification, Never> { get }
}

public extension AppDelegateReadable {
    var didFinishLaunchingNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.didFinishLaunchingNotification)
            .eraseToAnyPublisher()
    }
    
    var willTerminateNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.willTerminateNotification)
            .eraseToAnyPublisher()
    }
    
    var didBecomeActiveNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.didBecomeActiveNotification)
            .eraseToAnyPublisher()
    }
    
    var willResignActiveNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.willResignActiveNotification)
            .eraseToAnyPublisher()
    }
    
    var didEnterBackgroundNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.didEnterBackgroundNotification)
            .eraseToAnyPublisher()
    }
    
    var willEnterForegroundNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.willEnterForegroundNotification)
            .eraseToAnyPublisher()
    }
    
    var protectedDataAvailableNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.protectedDataDidBecomeAvailableNotification)
            .eraseToAnyPublisher()
    }
    
    var protectedDataUnavailableNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.protectedDataWillBecomeUnavailableNotification)
            .eraseToAnyPublisher()
    }
    
    var significantTimeChangeNotification: AnyPublisher<Notification, Never> {
        NotificationCenter.default
            .publisher(for: UIApplication.significantTimeChangeNotification)
            .eraseToAnyPublisher()
    }
}
