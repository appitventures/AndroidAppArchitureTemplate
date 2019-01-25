<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>




    <merge from="AndroidManifest.xml.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

      <merge from="src/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

<merge from="src/res/values/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

<merge from="src/res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />


     <copy from="src/res/drawable"
                 to="${escapeXmlAttribute(resOut)}/drawable" />
     <copy from="src/res/menu"
                 to="${escapeXmlAttribute(resOut)}/menu" />

<@kt.addAllKotlinDependencies />

<dependency mavenUrl ="androidx.constraintlayout:constraintlayout:2.0.0-alpha2"/>
 <dependency mavenUrl="androidx.appcompat:appcompat:1.0.2" />
<dependency mavenUrl="com.google.android.material:material:1.0.0" />

<dependency mavenUrl="com.squareup.retrofit2:retrofit:2.4.0" />
<dependency mavenUrl="com.squareup.retrofit2:converter-gson:2.4.0" />

<dependency mavenUrl="com.squareup.okhttp3:okhttp:3.11.0" />
<dependency mavenUrl="com.squareup.okhttp3:logging-interceptor:3.9.1" />

<dependency mavenUrl="com.google.dagger:dagger:2.16" />
<dependency mavenUrl="com.google.dagger:dagger-android:2.16" />
<dependency mavenUrl="com.google.dagger:dagger-android-support:2.16" />

<dependency mavenUrl="com.google.dagger:dagger-compiler:2.16" gradleConfiguration="kapt" />
<dependency mavenUrl="com.google.dagger:dagger-android-processor:2.16" gradleConfiguration="kapt" />

<dependency mavenUrl ="androidx.recyclerview:recyclerview:1.0.0" />
<dependency mavenUrl ="androidx.lifecycle:lifecycle-extensions:2.0.0" />
<dependency mavenUrl ="androidx.lifecycle:lifecycle-compiler:2.0.0" gradleConfiguration="annotationProcessor" />

<dependency mavenUrl ="androidx.room:room-runtime:2.1.0-alpha02" />
<dependency mavenUrl ="androidx.room:room-compiler:2.1.0-alpha02" gradleConfiguration="kapt" />



    <merge from="build.gradle.ftl" to="${escapeXmlAttribute(projectOut)}/build.gradle" />





    <instantiate from="src/app_package/classes/TActivity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${folderNameDemo}/${activityClass}.kt" />

    <instantiate from="src/app_package/classes/TSplashActivity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${splashActivityClass}.kt" />
    <instantiate from="src/app_package/classes/TBaseActivity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${baseActivityClass}.kt" />
    <instantiate from="src/app_package/classes/TViewModel.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${folderNameDemo}/${viewModelClass}.kt" />

    <instantiate from="src/app_package/classes/TModel.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${folderNameDemo}/${modelClass}.kt" />
    <instantiate from="src/app_package/classes/TAdapter.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${folderNameDemo}/${adapterClass}.kt" />
    <instantiate from="src/app_package/layout/adapter_layout.xml.ftl"
    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutViewHolder)}.xml" />


    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    <instantiate from="src/app_package/layout/activity_splash_layout.xml.ftl"
    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutNameSplash)}.xml" />
    <instantiate from="src/app_package/classes/TApiEndPoint.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameRetrofit}/${apiEndPointClass}.kt" />
    <instantiate from="src/app_package/classes/TApiService.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameRetrofit}/${apiServiceClass}.kt" />
    <instantiate from="src/app_package/classes/TApiRepository.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameRepository}/${repositoryClass}.kt" />
    <instantiate from="src/app_package/classes/TComponent.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diAppComponent}.kt" />
    <instantiate from="src/app_package/classes/TModule.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diAppModule}.kt" />
    <instantiate from="src/app_package/classes/TActivityBindingModule.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diActivityBindingModule}.kt" />
    <instantiate from="src/app_package/classes/TNetworkModule.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diNetworkModule}.kt" />
    <instantiate from="src/app_package/classes/TViewModelKey.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diViewModelKey}.kt" />
    <instantiate from="src/app_package/classes/TViewModelModule.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diViewModelModule}.kt" />
    <instantiate from="src/app_package/classes/TViewModelFactory.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${diViewModelFactory}.kt" />
    <instantiate from="src/app_package/classes/TApplication.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${applicationClass}.kt" />
    <instantiate from="src/app_package/classes/TNetworkInterceptor.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameHelper}/${networkInterceptorClass}.kt" />
    <instantiate from="src/app_package/classes/TCheckNetwork.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameHelper}/${checkNetworkClass}.kt" />
    <instantiate from="src/app_package/classes/TNoNetworkException.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameHelper}/${noNetworkExceptionClass}.kt" />

    <instantiate from="src/app_package/classes/TFragmentModule.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${fragmentModuleClass}.kt" />
    <instantiate from="src/app_package/classes/TDatabaseModule.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameDi}/${databaseModule}.kt" />


    <instantiate from="src/app_package/classes/TDatabase.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderRoom}/${databaseName}.kt" />
    <instantiate from="src/app_package/classes/TEntity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderRoom}/${entityClass}.kt" />
    <instantiate from="src/app_package/classes/TDao.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderRoom}/${daoClass}.kt" />


    <instantiate from="src/app_package/classes/TLocalFragment.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${folderNameDemo}/${fragmentOne}.kt" />

    <instantiate from="src/app_package/classes/TRemoteFragment.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${folderNameUi}/${folderNameDemo}/${fragmentTwo}.kt" />

    <instantiate from="src/app_package/layout/fragment_layout_one.xml.ftl"
    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentOneLayout)}.xml" />
    <instantiate from="src/app_package/layout/fragment_layout_two.xml.ftl"
    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentTwoLayout)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />


</recipe>
