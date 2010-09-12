#include <jni.h>
#include <stdio.h>
#include "HelloJNI.h"

JNIEXPORT void JNICALL 
Java_HelloJNI_print(JNIEnv *env, jobject obj)
{
    printf("Hello JNI!\n");
    return;
}
