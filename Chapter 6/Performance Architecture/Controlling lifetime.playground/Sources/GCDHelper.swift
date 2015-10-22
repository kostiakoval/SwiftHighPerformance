import Foundation

public struct GCD {
  @inline (__always) public static func backgroundQueue() -> dispatch_queue_t {
    return dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)
  }
  
  @inline (__always) public static func mainQueue() -> dispatch_queue_t {
    return dispatch_get_main_queue()
  }
  
  @inline (__always) public static func asyncOnBackground(block: () -> Void ) {
    dispatch_async(self.backgroundQueue(), block)
  }
  @inline (__always) public static func asyncOnMain(block: () -> Void ) {
    dispatch_async(self.mainQueue(), block)
  }
}
