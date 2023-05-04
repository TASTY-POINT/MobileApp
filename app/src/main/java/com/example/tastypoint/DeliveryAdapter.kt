package com.example.tastypoint

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso

class DeliveryAdapter(val deliveryList:List<Delivery>): RecyclerView.Adapter<deliveryViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): deliveryViewHolder {

        val layoutInflater= LayoutInflater.from(parent.context)
        return deliveryViewHolder(layoutInflater.inflate(R.layout.viewholder_fast_delivery,parent,false))
    }

    override fun getItemCount(): Int =deliveryList.size

    override fun onBindViewHolder(holder: deliveryViewHolder, position: Int) {
        holder.time.text = "${deliveryList[position].time} min"
        holder.title.text = deliveryList[position].title
        holder.star.text = deliveryList[position].star.toString()

        val drawableResourceId = holder.itemView.context.resources.getIdentifier(
            deliveryList[position].pic,
            "drawable",
            holder.itemView.context.packageName
        )
        Picasso.get()
            .load(drawableResourceId)
            .into(holder.pic)
    }
}