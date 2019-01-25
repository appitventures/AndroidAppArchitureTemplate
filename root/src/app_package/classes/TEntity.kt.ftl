package ${packageName}.${folderRoom};
 

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "${entityClass}")
data class ${entityClass}(

    @PrimaryKey(autoGenerate = true)
    var id:Int,
    var userId:Int,
    var title:String?,
    var body:String?)