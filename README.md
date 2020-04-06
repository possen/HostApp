
This is project which demonstrates that the `Defines Module` flag on the BarKit target does not allow `swiftinterface` files to be generated. 
`FooKit` has it enabled and they are generated. 
Use script `./create_xcframework.sh` to create the xcframework 

Note that `BarKit` does not compile when using the `HostAppXC` version which links against the `XCFramework`. 
Disabling `Defines module`, then regenerating the `XCFramework`, on `BarKit` allows `HostAppXC` to compile and run. 
