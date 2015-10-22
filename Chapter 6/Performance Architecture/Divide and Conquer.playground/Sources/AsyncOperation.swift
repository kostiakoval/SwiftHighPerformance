public struct AsyncOperation {
  
  public static func calculateAverage(data: SalesData, result: (Int) -> Void ) {
    runAsync(data.average, result: result)
  }
  
  //MARK: - Private
  private static func runAsync<T>(@autoclosure(escaping) work: () -> T, result: (T) -> Void ) {
    GCD.asyncOnBackground {
      let x = work()
      GCD.asyncOnMain {
        result(x)
      }
    }
  }
}
