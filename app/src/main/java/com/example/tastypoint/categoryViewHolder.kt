package com.example.tastypoint

import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso

class categoryViewHolder (view: View): RecyclerView.ViewHolder(view) {

    val categoryName=view.findViewById<TextView>(R.id.categoryName)
    val categoryPic=view.findViewById<ImageView>(R.id.categoryPic)

}