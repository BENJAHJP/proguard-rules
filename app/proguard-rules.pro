# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**

# A resource is loaded with a relative path so the package of this class must be preserved.
-adaptresourcefilenames okhttp3/internal/publicsuffix/PublicSuffixDatabase.gz

# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# OkHttp platform used only on JVM and when Conscrypt and other security providers are available.
-dontwarn okhttp3.internal.platform.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**

# Hilt-related classes
-keep class androidx.hilt.** { *; }
-keep class dagger.hilt.** { *; }
-keep class javax.inject.** { *; }

# Hilt annotation classes
-keepclasseswithmembers class * {
    @dagger.hilt.* <methods>;
}

# Kotlin coroutines
-keep class kotlin.coroutines.Continuation { *; }
-keep class kotlin.coroutines.CoroutineContext { *; }
-keep class kotlinx.coroutines.CoroutineExceptionHandler { *; }
-keep class kotlinx.coroutines.Dispatchers { *; }
-keep class kotlinx.coroutines.Job { *; }
-keep class kotlinx.coroutines.flow.** { *; }

# Keep ViewModel classes and their methods and fields
-keep class * extends androidx.lifecycle.ViewModel {
    <init>();
}

# Keep UseCase classes and their methods
-keep class com.example.proguard.domain.use_case.** {
    <init>();
    public *;
}

# Keep Domain folder
-keep class com.example.proguard.domain.** {*;}

# Keep Data folder
-keep class com.example.proguard.data.** {*;}

# Keep Constants folder
-keep class com.example.proguard.common.** {*;}