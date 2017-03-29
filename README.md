# linc/gvr
An example gvr project to start a linc library.

For more information, see the [linc homepage](http://snowkit.github.io/linc/)

## Usage 

### Android

Extract gvr-android-sdk under `lib/`. So that, for example, `libgvr.so` can be found under `lib/gvr-android-sdk/libraries/jni/armeabi-v7a`

```bash
cd ~ # or any desired folder
git clone https://github.com/googlevr/gvr-android-sdk
cd gvr-android-sdk
./gradlew :extractNdk
cp -R libraries/jni/* $(haxelib path linc_gvr | head -n 1)/lib/gvr-android-sdk/libraries/jni
```