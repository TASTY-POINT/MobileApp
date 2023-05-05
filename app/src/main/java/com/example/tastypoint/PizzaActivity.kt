package com.example.tastypoint

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class PizzaActivity : AppCompatActivity() {

    private lateinit var adapter: RecyclerView.Adapter<*>
    private lateinit var adapter2: RecyclerView.Adapter<*>
    private lateinit var recyclerViewCategory: RecyclerView
    private lateinit var recyclerViewfastList: RecyclerView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        window.decorView.layoutDirection = View.LAYOUT_DIRECTION_LTR


        pizzaViewList()
    }

    fun pizzaViewList() {
        val linearLayoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        recyclerViewfastList = findViewById(R.id.view2)
        recyclerViewfastList.layoutManager = linearLayoutManager

        val pizzaDeliveryDomains = ArrayList<Delivery>()
        pizzaDeliveryDomains.add(Delivery("Pepperoni pizza", "fast_2", 8.1, 16))
        pizzaDeliveryDomains.add(Delivery("vagetable pizza", "fast_3", 9.5, 16))
        pizzaDeliveryDomains.add(Delivery("Pepperoni pizza", "fast_2", 8.1, 16))
        pizzaDeliveryDomains.add(Delivery("vagetable pizza", "fast_3", 9.5, 16))

        adapter2 = DeliveryAdapter(pizzaDeliveryDomains)
        recyclerViewfastList.adapter = adapter2
    }



}