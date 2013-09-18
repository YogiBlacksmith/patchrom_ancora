Patchrom
===========

Get Android SDK
----------------

In order to build patchrom project, you must have android sdk installed.(http://developer.android.com/sdk/installing.html)

And add the sdk tools and platform-tools to PATH.

vim .bashrc

export PATH=$PATH:/home/xxx/android-sdk/tools:/home/xxx/anroid-sdk/platform-tools

Getting Started
---------------

To get started with MiCode/patchrom, you'll need to get
familiar with [Git and Repo](http://source.android.com/download/using-repo).

To initialize your local repository using the patchrom trees, use a command like this:

    mkdir patchrom

    cd patchrom

    repo init -u git://github.com/MiCode/patchrom.git -b jellybean

Then to sync up:

    repo sync

Build
--------

On your patchrom directory type:

    'source build/envsetup.sh'    
    'mkdir ancora'
    'cd ancora'
    'git init'
    'git pull git@github.com:YogiBlacksmith/patchrom_ancora.git master'
    add CM10 rom and rename it to 'stockrom.zip' and place it into your device directory!!
    'make fullota PORT_PODUCT=i8150 BUILD_NUMBER=(your version) ex=3.9.13'
    
Make OTA
---------

    find out target_files.zip in out directory
    copy that to your device folder
    rename to last_target_files.zip
    make change to your patchrom
    type 'make clean'
    type 'make fullota' again to generate new target_files.zip
    then type './makeota 3.9.20 3.9.13 RN'
    
ENJOY
---------
    
