import UIKit

protocol AutoMockable {}

protocol Camera: AutoMockable {
  func start()
  func stop()
  func capture(_ completion: @escaping (UIImage?) -> Void)
  func rotate()
}
