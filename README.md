
This is project which demonstrates that the `Defines Module` flag on the BarKit target does not allow `swiftinterface` files to be generated. 
`FooKit` has it enabled and they are generated. 
Use script `./create_xcframework.sh` to create the xcframework 

Note that `BarKit` does not compile when using the `HostAppXC` version which links against the `XCFramework`. 
Disabling `Defines module`, then regenerating the `XCFramework`, on `BarKit` allows `HostAppXC` to compile and run. 

See the enclosed project. Open the project and build, there are 4 targets, of those there are two frameworks, the main difference between the `BarKit` and `FooKit` frameworks is that `BarKit` has the `Defines Module` flag set to true. First build the HostApp target, this will generate `FooKit.framework` and `Bar.framework`. Next, run the `./create_xcframework` script included in the root of the project. Look at the generated XCFramework. Foo.framework does not define a module and therefore generates swiftinterface files, `BarKit.framework` does defines a module, it does not generate swiftinterface files. Now, build the HostAppXC target, it will fail to build because the `BarKit.framework` has no swiftinterface files. If you turn off `Defines Module` for `BarKit.framework`, rerun `./create_xcframework`, then it compiles and runs. 
