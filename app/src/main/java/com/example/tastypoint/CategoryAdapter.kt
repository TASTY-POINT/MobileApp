package com.example.tastypoint

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso


class CategoryAdapter (val categoryList:List<Category>): RecyclerView.Adapter<categoryViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): categoryViewHolder {

        val layoutInflater= LayoutInflater.from(parent.context)
        return categoryViewHolder(layoutInflater.inflate(R.layout.viewholder_category,parent,false))
    }

    override fun getItemCount(): Int =categoryList.size

    override fun onBindViewHolder(holder: categoryViewHolder, position: Int) {
        holder.categoryName.text = categoryList[position].title
        val picUrl = when (position) {
            0 -> "cat_1"
            1 -> "cat_2"
            2 -> "cat_3"
            3 -> "cat_4"
            else -> ""
        }
        val drawableResourceId = holder.itemView.context.resources.getIdentifier(picUrl, "drawable", holder.itemView.context.packageName)
        Picasso.get().load(drawableResourceId).into(holder.categoryPic)
    }

}