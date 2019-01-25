package ${packageName}.${folderNameDi};


import ${packageName}.${folderNameUi}.${folderNameDemo}.${fragmentOne};
import ${packageName}.${folderNameUi}.${folderNameDemo}.${fragmentTwo};

import dagger.Module
import dagger.android.ContributesAndroidInjector

@Module
abstract class ${fragmentModuleClass}{

    @ContributesAndroidInjector
    abstract fun contribute${fragmentOne}(): ${fragmentOne}

    @ContributesAndroidInjector
    abstract fun contribute${fragmentTwo}(): ${fragmentTwo}


}