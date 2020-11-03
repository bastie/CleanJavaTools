# CleanJavaTools

This Toolset create a clean code Java JDK/JRE from original OpenJDK GitHub mirror, called as CleanJava

## How does it works

CleanJavaTools use the build.--os--.zsh script as main. It 
 1. copy the OpenJDK in a subdirectory called CleanJava and
 2. install requirements
 3. --not yet implemented-- patch sources
 4. start build process

In addition manually the changes will be check to make the OpenJDK better over Pull Request.


## Patches

The subdir patches includes a similar directory tree to changes files. In using from ``diff -Nau --original file-- --changed file--`` to ``patch`` later. To detect changes in OpenJDK source tree ``shasum --original file--``is included in file name ``--original file without extension--.shasum.patch``.

**sample**

```shell
shasum CleanJava/src/java.desktop/share/classes/java.awt/SplashScreen.java
mkdir -p patches/src/java.desktop/share/classes/java/awt
touch patches/src/java.desktop/share/classes/java/awt/SplashScreen.a199f4aacc7f117fe8127404e785c54bbf943cec.patch
cp CleanJava/src/java.desktop/share/classes/java/awt/SplashScreen.java .
vi SplashScreen.java
diff -Nau CleanJava/src/java.desktop/share/classes/java/awt/SplashScreen.java ./SplashScreen.java  >patches/src/java.desktop/share/classes/java/awt/SplashScreen.a199f4aacc7f117fe8127404e785c54bbf943cec.patch 
rm SplashScreen.java
```
Also ``patch.zsh`` is extended

```shell
patch CleanJava/src/java.desktop/share/classes/java/awt/SplashScreen.a199f4aacc7f117fe8127404e785c54bbf943cec.patch patches/src/java.desktop/share/classes/java/awt/SplashScreen.a199f4aacc7f117fe8127404e785c54bbf943cec.patch
```
