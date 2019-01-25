package ${packageName}.${folderNameDi};
 
import android.content.Context

import ${packageName}.${applicationClass};
import ${packageName}.${folderNameRepository}.${repositoryClass};
import ${packageName}.${folderNameRetrofit}.${apiServiceClass};
import ${packageName}.${folderRoom}.${databaseName};



import dagger.Module
import dagger.Provides
import javax.inject.Singleton


@Module(includes = [${diViewModelModule}::class, ${diNetworkModule}::class, ${databaseModule}::class])
class ${diAppModule} {

    @Provides
    @Singleton
    fun provideAppContext(application: ${applicationClass}): Context {
        return application.applicationContext
    }


    @Provides
    @Singleton
    fun provideRepo(apiService: ${apiServiceClass},database:${databaseName}) : ${repositoryClass} {
        return ${repositoryClass}(apiService,database)
    }


}

