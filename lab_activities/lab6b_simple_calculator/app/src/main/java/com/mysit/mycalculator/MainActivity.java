package com.mysit.mycalculator;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    Button btn0, btn1, btn2, btn3, btn4, btn5, btn6, btn7,btn8, btn9,
    btnAddition, btnSubtraction, btnMultiplication, btnDivision,
    btnClear, btnEqual, btnDecimalPoint;

    EditText edtTotal;

    float mValueOne, mValueTwo;

    boolean mAddition, mSubtract, mMultiplication, mDivision;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn0 = (Button) findViewById(R.id.button0);
        btn1 = (Button) findViewById(R.id.button1);
        btn2 = (Button) findViewById(R.id.button2);
        btn3 = (Button) findViewById(R.id.button3);
        btn4 = (Button) findViewById(R.id.button4);
        btn5 = (Button) findViewById(R.id.button5);
        btn6 = (Button) findViewById(R.id.button6);
        btn7 = (Button) findViewById(R.id.button7);
        btn8 = (Button) findViewById(R.id.button8);
        btn9 = (Button) findViewById(R.id.button9);
        btnDecimalPoint = (Button) findViewById(R.id.button10);
        btnAddition = (Button) findViewById(R.id.buttonadd);
        btnSubtraction = (Button) findViewById(R.id.buttonsub);
        btnDivision = (Button) findViewById(R.id.buttondiv);
        btnMultiplication = (Button) findViewById(R.id.buttonmul);
        btnClear = (Button) findViewById(R.id.buttonC);
        btnEqual = (Button) findViewById(R.id.buttoneql);
        edtTotal = (EditText) findViewById(R.id.edt1);


        btn1.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "1");
            }
        });

        btn2.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "2");
            }
        });

        btn3.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "3");
            }
        });

        btn4.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "4");
            }
        });

        btn5.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "5");
            }
        });
        btn6.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "6");
            }
        });

        btn7.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "7");
            }
        });

        btn8.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "8");
            }
        });

        btn9.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "9");
            }
        });

        btn0.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                edtTotal.setText(edtTotal.getText() + "0");
            }
        });


        btnAddition.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                if(edtTotal == null){
                    edtTotal.setText("");
                }else{
                    mValueOne = Float.parseFloat(edtTotal.getText() + "");
                    mAddition = true;
                    edtTotal.setText(null);
                }
            }
        });


        btnSubtraction.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueOne = Float.parseFloat(edtTotal.getText() + "");
                mSubtract = true;
                edtTotal.setText(null);
            }
        });

        btnMultiplication.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueOne = Float.parseFloat(edtTotal.getText() + "");
                mMultiplication = true;
                edtTotal.setText(null);
            }
        });

        btnDivision.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueOne = Float.parseFloat(edtTotal.getText() + "");
                mDivision = true;
                edtTotal.setText(null);
            }
        });

        btnEqual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueTwo = Float.parseFloat(edtTotal.getText() + "");

                if (mAddition == true) {
                    edtTotal.setText(mValueOne + mValueTwo + "");
                    mAddition = false;
                }

                if (mSubtract == true) {
                    edtTotal.setText(mValueOne - mValueTwo + "");
                    mSubtract = false;
                }

                if (mMultiplication == true) {
                    edtTotal.setText(mValueOne * mValueTwo + "");
                    mMultiplication = false;
                }

                if (mDivision == true) {
                    edtTotal.setText(mValueOne / mValueTwo + "");
                    mDivision = false;
                }
            }
        });

        btnClear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                edtTotal.setText("");
            }
        });

        btnDecimalPoint.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                edtTotal.setText(edtTotal.getText() + ".");
            }
        });
    }

}
