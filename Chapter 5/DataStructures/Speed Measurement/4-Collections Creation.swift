//
//  4-Collections-Speed.swift
//  DataStructures
//
//  Created by Kostiantyn Koval on 01/06/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation


func collectionsSpeed () {

  for size in MemoryAllocationSizes {
    print("Array")
    unknowSizeArray(size)
    knowSizeArray(size)
    defaultArray(size)
    
    print("\n Set")
    
    unknowSizeSet(size)
    knowSizeSet(size)
    
    print("\n Dictionary")

    unknowSizeDictionary(size)
    knowSizeDictionary(size)
  }
}

