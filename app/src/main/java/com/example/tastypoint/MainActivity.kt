package com.example.tastypoint

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class MainActivity : AppCompatActivity() {

    private lateinit var adapter: RecyclerView.Adapter<*>
    private lateinit var adapter2: RecyclerView.Adapter<*>
    private lateinit var recyclerViewCategory: RecyclerView
    private lateinit var recyclerViewfastList: RecyclerView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        window.decorView.layoutDirection = View.LAYOUT_DIRECTION_LTR

        recyclerViewCategory()
        recyclerViewfastList()
    }

        fun recyclerViewfastList() {
            val linearLayoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
            recyclerViewfastList = findViewById(R.id.view2)
            recyclerViewfastList.layoutManager = linearLayoutManager

            val fastDeliveryDomains = ArrayList<Delivery>()
            fastDeliveryDomains.add(Delivery("Chesse Burger", "fast_1", 9.0, 20))
            fastDeliveryDomains.add(Delivery("Pepperoni pizza", "fast_2", 8.1, 16))
            fastDeliveryDomains.add(Delivery("vagetable pizza", "fast_3", 9.5, 16))

            adapter2 = DeliveryAdapter(fastDeliveryDomains)
            recyclerViewfastList.adapter = adapter2
        }

        fun recyclerViewCategory() {
            val linearLayoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
            recyclerViewCategory = findViewById(R.id.view1)
            recyclerViewCategory.layoutManager = linearLayoutManager

            val categoryList = ArrayList<Category>()
            categoryList.add(Category("Pizza", "cat_1"))
            categoryList.add(Category("Burger", "cat_2"))
            categoryList.add(Category("Chicken", "cat_3"))
            categoryList.add(Category("Hotdog", "cat_4"))

            adapter = CategoryAdapter(categoryList)
            recyclerViewCategory.adapter = adapter
        }

}