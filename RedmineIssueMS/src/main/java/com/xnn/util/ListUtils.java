package com.xnn.util;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/12/17  11:05
 * Description:
 * Modified By:
 */
public final class ListUtils {
    public static <T> List<T> filter(List<T> list, ListUtilsHook<T> hook) {
        ArrayList<T> r = new ArrayList<T>();
        for (T t : list) {
            if (hook.test(t)) {
                r.add(t);
            }
        }
        r.trimToSize();
        return r;
    }
}
