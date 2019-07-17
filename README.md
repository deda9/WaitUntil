# WaitUntil

Its a sugar syntax to use expectation to run asynchronous work on XCTestCase.

#### It replaces:
```Swift
let imageLoader = ImageLoader()
let completedExpectation = expectation(description: "Completed")

imageLoader.download { image in
    completedExpectation.fulfill()
}

waitForExpectations(timeout: 0.3, handler: nil)

```

#### with:
```Swift
let imageLoader = ImageLoader()

waitUnilt { done in
    imageLoader.download { image in
        done()
    }
}
```
