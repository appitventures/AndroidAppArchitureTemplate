package ${packageName}.${folderRoom};
 

import androidx.lifecycle.LiveData
import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query

@Dao
interface ${daoClass} {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    fun savePost(entity: ${entityClass})

    @Query("SELECT * FROM ${entityClass}")
    fun getPosts(): LiveData<List<${entityClass}>>


}