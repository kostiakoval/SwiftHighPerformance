//: # Objc
/*
- None [-O0],                 : 0.115935 s
- Fastest [-O3],              : 0.0863675 s
- Fastest Smallest [-Os], 		: 0.0864627 s
- Fastest, Agressive [-Ofast] : 0.0870518 s
*/

//: # C
/*
- None [-O0],                   :0.017443 s
- Fastest [-O3],                :0.013153 s
- Fastest Smallest [-Os],       :0.013140 s
- Fastest, Agressive [-Ofast] 	:0.013968 s
*/


//: # Swift
/*
- None [-Ononne],                    :0.146323974401457 sec
- Fastest [-O],                      :0.00602827130060177 sec
- Fastest, Whole Module Optimization
  [-O -whole-module-optimization] 	 :0.0059604722133372 sec
*/

