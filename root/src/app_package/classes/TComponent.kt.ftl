package ${packageName}.${folderNameDi};
 

import ${packageName}.${applicationClass}
import dagger.Component
import dagger.android.AndroidInjector
import dagger.android.support.AndroidSupportInjectionModule
import javax.inject.Singleton


@Singleton
@Component(modules = [AndroidSupportInjectionModule::class,${diAppModule}::class,${diActivityBindingModule}::class])
interface ${diAppComponent} : AndroidInjector<${applicationClass}> {
    @Component.Builder
    abstract class Builder: AndroidInjector.Builder<${applicationClass}>()

}

