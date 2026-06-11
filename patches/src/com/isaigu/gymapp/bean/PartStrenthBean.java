package com.isaigu.gymapp.bean;

import com.contrarywind.timer.MessageHandler;
import java.io.Serializable;

public class PartStrenthBean implements Serializable {
    public int[] buwei = new int[10];
    public float[] buweiFloat = new float[10];

    public void migrateIfNeeded() {
        for (int i = 0; i < 10; i++) {
            if (buweiFloat[i] <= 0.0f && buwei[i] > 0) {
                buweiFloat[i] = buwei[i];
            }
            if (buweiFloat[i] > 0.0f) {
                buwei[i] = Math.round(buweiFloat[i]);
            }
        }
    }

    public void reset() {
        for (int i = 0; i < 10; i++) {
            buwei[i] = 0;
            buweiFloat[i] = 0.0f;
        }
    }

    public int getMaxBodyStrenth() {
        migrateIfNeeded();
        int max = 0;
        for (int i = 0; i < buwei.length; i++) {
            if (buwei[i] > max) {
                max = buwei[i];
            }
        }
        return max;
    }

    public int getMinBodyStrenth() {
        migrateIfNeeded();
        int min = MessageHandler.WHAT_SMOOTH_SCROLL;
        for (int i = 0; i < buwei.length; i++) {
            if (buwei[i] < min) {
                min = buwei[i];
            }
        }
        return min;
    }
}
