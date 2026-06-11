package com.isaigu.gymapp.utils;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.List;

public class BeanUtils {
    private static Gson gson = new Gson();

    public static <T> T cloneObject(T t) {
        if (t == null) {
            return null;
        }
        Gson gson2 = gson;
        return (T) gson2.fromJson(gson2.toJson(t), (Class) t.getClass());
    }

    public static <T> List<T> cloneArray(List<T> object, Class<T> clazz) {
        if (object == null || object.size() <= 0) {
            return new ArrayList<>();
        }
        Gson gson2 = gson;
        Object[] conf = (Object[]) gson2.fromJson(gson2.toJson(object), TypeToken.getArray(clazz).getType());
        ArrayList<T> list = new ArrayList<>();
        if (conf == null) {
            return list;
        }
        for (Object obj : conf) {
            list.add((T) obj);
        }
        return list;
    }
}
