package com.example.practical_3

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import android.widget.Toast

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        var button = findViewById<Button>(R.id.button)

        button.setOnClickListener {
            var textView = findViewById<TextView>(R.id.textView)
           if (textView.text == "Hello World!"){
               textView.text = "Hello"
           } else {
               textView.text = "Hello World!"
           }
            Toast.makeText(this, "Text Changed to Hello", Toast.LENGTH_LONG).show()
        }

    }

}