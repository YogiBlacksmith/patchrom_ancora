#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
GIT_APPLY=$PORT_ROOT/tools/git.apply
 
if [ $2 = "out/framework" ];then
	echo "make framework2.jar"

    rm "framework2.jar.out/" -rf
	mkdir -p "framework2.jar.out/smali"
	touch "framework2.jar.out/apktool.yml"
	echo "version: 1.4.3" >> "framework2.jar.out/apktool.yml"
	echo "apkFileName: framework2.jar" >> "framework2.jar.out/apktool.yml"

	mv "out/framework/smali/com" "framework2.jar.out/smali"
fi

if [ "$2" = "out/framework2" ];then
        cp other/ExtraActivityManager.patch out/
        cd out
        $GIT_APPLY ExtraActivityManager.patch
        cd ..
fi
