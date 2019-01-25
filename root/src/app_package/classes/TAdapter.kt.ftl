package ${packageName}.${folderNameUi}.${folderNameDemo};

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import ${packageName}.R
import kotlinx.android.synthetic.main.${escapeXmlAttribute(layoutViewHolder)}.view.*
import ${packageName}.${folderRoom}.${entityClass}



 
class ${adapterClass}(var context:Context,val userList: ArrayList<${entityClass}>) : RecyclerView.Adapter<${adapterClass}.ViewHolder>() {


    //this method is returning the view for each item in the list
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${adapterClass}.ViewHolder {
        val v = LayoutInflater.from(parent.context).inflate(R.layout.${layoutViewHolder}, parent, false)
        return ViewHolder(v)
    }

    //this method is binding the data on the list
    override fun onBindViewHolder(holder: ${adapterClass}.ViewHolder, position: Int) {
        holder.bindItems(userList[position])
    }

    //this method is giving the size of the list
    override fun getItemCount(): Int {
        return userList.size
    }

    //the class is hodling the list view
    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        fun bindItems(dashBoardModel: ${entityClass}) {
                   itemView.heading.text  = dashBoardModel.title
                   itemView.paragraph.text = dashBoardModel.body
            }
	 }

     fun addList(userListNew: List<${entityClass}>) {
         userList.clear()
         userList.addAll(userListNew)
         notifyDataSetChanged()
     }

}
