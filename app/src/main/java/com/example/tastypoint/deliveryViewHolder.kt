package com.example.tastypoint
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso

class deliveryViewHolder(view:View):RecyclerView.ViewHolder(view) {

    val title=view.findViewById<TextView>(R.id.title)
    val pic=view.findViewById<ImageView>(R.id.pic)
    val star=view.findViewById<TextView>(R.id.star)
    val time=view.findViewById<TextView>(R.id.time)

}