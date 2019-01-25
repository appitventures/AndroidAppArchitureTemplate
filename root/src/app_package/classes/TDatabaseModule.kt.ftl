package ${packageName}.${folderNameDi};
 

import android.content.Context
import androidx.room.Room
import dagger.Module
import dagger.Provides
import javax.inject.Singleton
import ${packageName}.${folderRoom}.${databaseName}


@Module
class ${databaseModule}{

    private var INSTANCE: ${databaseName}?=null

    @Provides
    @Singleton
    fun getDatabase(context: Context): ${databaseName} {
        if (INSTANCE == null) {
            synchronized(${databaseName}::class.java) {
                if (INSTANCE == null) {
                    INSTANCE = Room.databaseBuilder(context,
                        ${databaseName}::class.java, "posts_db")
                            .build()

                }
            }
        }
        return INSTANCE!!
    }


}