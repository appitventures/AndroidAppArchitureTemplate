package ${packageName}.${folderNameUi}.${folderNameDemo};

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
import androidx.recyclerview.widget.LinearLayoutManager
import ${packageName}.R
import dagger.android.support.DaggerFragment
import kotlinx.android.synthetic.main.${escapeXmlAttribute(fragmentOneLayout)}.*
import javax.inject.Inject
import ${packageName}.${folderRoom}.${entityClass}
import java.util.*


class ${fragmentOne} : DaggerFragment() {

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory
    lateinit var dashboardViewModel:${viewModelClass}

    private lateinit var locationsListAdapter: ${adapterClass}
    private var locationsList: ArrayList<${entityClass}> = arrayListOf()
    private lateinit var mLinearLayoutManager: LinearLayoutManager


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${fragmentOneLayout}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initialiseViewModel()
        observeHomeViewModel()
        initialiseRecyclerView()
        activity?.title = context?.getString(R.string.local_fragment)


        buttonInsert.setOnClickListener {
            dashboardViewModel.savePostInDB(PostEntity(0, 1, getRandomNumber(), getRandomId()))

        }


    }
    companion object {
        fun newInstance(): ${fragmentOne} {
            return ${fragmentOne}()
        }
    }

    private fun getRandomId(): String {
        return UUID.randomUUID().toString()
    }
     private fun getRandomNumber() :String {
            return ""+(Random().nextInt(999) + 1000)
        }


    private fun initialiseViewModel() {
        dashboardViewModel = ViewModelProviders.of(this, viewModelFactory).get(${viewModelClass}::class.java)
    }
    private fun observeHomeViewModel() {
        dashboardViewModel.getPostsFromDB().observe(this, Observer {
            if (it != null) {
                        if(it.isNotEmpty())
                                defaultText.visibility = View.GONE

                locationsListAdapter.addList(it)
            }
        })
    }

    private fun initialiseRecyclerView() {
        locationsListAdapter = ${adapterClass}(context!!, locationsList)
        mLinearLayoutManager = LinearLayoutManager(context)
        recyclerViewLocal.layoutManager = mLinearLayoutManager
        recyclerViewLocal.adapter = locationsListAdapter

    }
}