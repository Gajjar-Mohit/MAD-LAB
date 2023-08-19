package com.example.practical_4

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.Switch
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import kotlin.math.roundToInt

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var submitButton = findViewById<Button>(R.id.calculate)
        var amount = 0;
        var tip = 0;
        var cost = findViewById<EditText>(R.id.costField)
        var amountText = findViewById<TextView>(R.id.amountText)
        var radioGroup = findViewById<RadioGroup>(R.id.rg_tip)
        var roundSwitch = findViewById<Switch>(R.id.switch1)
        var temp = 0.0;
        radioGroup.setOnCheckedChangeListener(
            RadioGroup.OnCheckedChangeListener { group, checkedId ->
                val radio: RadioButton = findViewById(checkedId)
                when (radio.text) {
                    "Amazing(22%)" -> {
                        tip = 22
                    }
                    "Good(20%)" -> {
                        tip = 20
                    }
                    "Okay(15%)" -> {
                        tip = 15
                    }
                }
            })

        roundSwitch.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) amountText.text = "$${temp.roundToInt().toString()}" else amountText.text ="$${temp.toString()}"

        }
        submitButton.setOnClickListener(View.OnClickListener {
            var costAmount = toDouble(cost.text.toString())
            var totalAmount = costAmount * tip/100
            amountText.text = "$${totalAmount}"
            temp = totalAmount
        })


    }
    fun toDouble(s: String): Double {
        return s.toDouble()
    }
}