# BetterJavaCompile

## What is BJC
A simple programm that allows you to easily compile java projects like in a IDE but from your linux/mac(?) commandline! No more trouble with specifying tons of packages in each compilation! BetterJavaCompile compiles every .java file the directory you execute it from(or specify via flags) and also inside every subdirectory.

## Usage with .jar librarys
When using .jar librarys you just have to create a folder called ".libs" in the top of your folderstructure and put them inside. Alternativly you can also use the `--libdir` flag to specify another folder(but a relative path to top directory is required for that, no absolute paths for now)

## Requirements
I try to keep it simple so the only requirements are any version of any **JDK** that includes a normal-functioning `javac` binary and any version of ruby! Both should be pretty easy to get from your favourite package-manager

## Installation
```
git clone https://github.com/trueFireblade/BetterJavaCompile.git
cd BetterJavaCompile
sudo make install
```

## Questions you might have
+ Why in ruby?
> On the one hand I personally really like the ruby language on the other hand I wanted to use a rather fast interpreted language, so there should be no difficulties no matter what distro you use!

+ What flags are there and what do they do?
> Just do `BJC -h` and you will see all possible flags

+ I get a bad-classfile error when trying to compile
> Due to how the java compiler works its rather annoying to get *import package.\*;* to work correclty, so you either have to import the specific classes *import package.class;* or hava a seperate directory for the java files of the packages. If you do the second one the compiler will automaticly create the directorys according to how you specified it in the *package* function for the class files

+ Can I add custom javac flags?
> Yes you can, just pass a string of all options you want(enlosed in ") behind the -j flag

+ Why is there a questionmark behind the mac?
> I don't own a mac so I couldn't test it there, but I am rather sure it should also work on a mac!(feel free to send me a message if one of you tried^^)
