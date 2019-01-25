package ${packageName}.${folderNameDi};
 import dagger.Module
import dagger.android.ContributesAndroidInjector

import ${packageName}.${folderNameUi}.${folderNameDemo}.${activityClass};
import ${packageName}.${folderNameUi}.${splashActivityClass};


@Module
abstract class ${diActivityBindingModule} {

    @ContributesAndroidInjector(modules = [${fragmentModuleClass}::class])
    abstract fun contribute${activityClass}(): ${activityClass}

    @ContributesAndroidInjector
    abstract fun contribute${splashActivityClass}(): ${splashActivityClass}

}