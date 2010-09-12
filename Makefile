all : java_native build

java_native :
	javac HelloJNI.java
	javah -jni HelloJNI

build : HelloJNI.c
	gcc -dynamiclib -o HelloJNI.dylib -I/System/Library/Frameworks/JavaVM.framework/Headers HelloJNI.c -framework JavaVM