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
import kotlinx.android.synthetic.main.${escapeXmlAttribute(fragmentTwoLayout)}.*
import javax.inject.Inject

import ${packageName}.${folderRoom}.${entityClass}

class ${fragmentTwo} : DaggerFragment() {

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory
    lateinit var dashboardViewModel: ${viewModelClass}

    private lateinit var locationsListAdapter: ${adapterClass}
    private var locationsList: ArrayList<${entityClass}> = arrayListOf()
    private lateinit var mLinearLayoutManager: LinearLayoutManager


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${fragmentTwoLayout}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initialiseViewModel()
        observeHomeViewModel()
        initialiseRecyclerView()
        activity?.title = context?.getString(R.string.remote_fragment)



    }
    companion object {
        fun newInstance(): ${fragmentTwo} {
            return ${fragmentTwo}()
        }
    }



    private fun initialiseViewModel() {
        dashboardViewModel = ViewModelProviders.of(this, viewModelFactory).get(${viewModelClass}::class.java)
    }
    private fun observeHomeViewModel() {
            dashboardViewModel.getPosts()
            dashboardViewModel.getPostsObserver().observe(this, Observer {
                if (it != null) {
                    locationsListAdapter.addList(it)
                }
            })
        }

    private fun initialiseRecyclerView() {
        locationsListAdapter = ${adapterClass}(context!!, locationsList)
        mLinearLayoutManager = LinearLayoutManager(context)
        recyclerViewRemote.layoutManager = mLinearLayoutManager
        recyclerViewRemote.adapter = locationsListAdapter

    }
}