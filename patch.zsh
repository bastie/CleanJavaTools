#!/bin/zsh

# remove deprecated java.io.File.toURL()
patch CleanJava/src/java.base/share/classes/java/io/File.java patches/src/java.base/share/classes/java/io/File.10e63cd2cd3a758b5852de5510502d845ba77a07.patch
patch CleanJava/src/jdk.internal.jvmstat/share/classes/sun/jvmstat/perfdata/monitor/PerfDataBufferImpl.java patches/src/jdk.internal.jvmstat/share/classes/sun/jvmstat/perfdata/monitor/PerfDataBufferImpl.7ee8bc3f820e96191ff9fc717aa1c54475cc2761.patch
patch CleanJava/src/java.desktop/share/classes/java/awt/SplashScreen.java patches/src/java.desktop/share/classes/java/awt/SplashScreen.a199f4aacc7f117fe8127404e785c54bbf943cec.patch


