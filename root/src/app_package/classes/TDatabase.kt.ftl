package ${packageName}.${folderRoom};
 

import androidx.room.Database
import androidx.room.RoomDatabase
import ${packageName}.${folderRoom}.${daoClass}
import ${packageName}.${folderRoom}.${entityClass}


@Database(entities = [${entityClass}::class], version = 1, exportSchema = false)
abstract class ${databaseName} : RoomDatabase(){

    abstract fun postDAO() : ${daoClass}
}