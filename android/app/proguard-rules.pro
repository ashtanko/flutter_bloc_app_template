# Flutter's Gradle plugin already contributes the engine/embedding keep rules,
# so this file only needs app- and plugin-specific entries.

# Keep annotations that reflection-based libraries read at runtime.
-keepattributes *Annotation*

# Keep line numbers so Play Console stack traces stay symbolicable
# (upload the mapping.txt produced under build/app/outputs/mapping/).
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
