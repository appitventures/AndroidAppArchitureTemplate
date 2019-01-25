<#if true>

# Project-wide Gradle settings.

# IDE (e.g. Android Studio) users:
# Gradle settings configured through the IDE *will override*
# any settings specified in this file.

# For more details on how to configure your build environment visit
# http://www.gradle.org/docs/current/userguide/build_environment.html

# Specifies the JVM arguments used for the daemon process.
# The setting is particularly useful for tweaking memory settings.

</#if>

<#if isLowMemory>
org.gradle.jvmargs=-Xmx1024m
<#else>
org.gradle.jvmargs=-Xmx1536m
</#if>

<#if true>


# When configured, Gradle will run in incubating parallel mode.
# This option should only be used with decoupled projects. More details, visit
# http://www.gradle.org/docs/current/userguide/multi_project_builds.html#sec:decoupled_projects
# org.gradle.parallel=true

</#if>


<#if addAndroidXSupport>
# AndroidX package structure to make it clearer which packages are bundled with the
# Android operating system, and which are packaged with your app's APK
# https://developer.android.com/topic/libraries/support-library/androidx-rn
android.useAndroidX=true
# Automatically convert third-party libraries to use AndroidX
android.enableJetifier=true
</#if>

<#if generateKotlin>
# Kotlin code style for this project: "official" or "obsolete":
kotlin.code.style=official
</#if>

<#if true >
    android.useAndroidX=true
    android.enableJetifier=true
</#if>




