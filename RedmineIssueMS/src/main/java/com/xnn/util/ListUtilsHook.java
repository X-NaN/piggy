package com.xnn.util;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/12/17  11:06
 * Description:用来给ListUtils做函数钩子的接口。
 * Modified By:
 */
public interface ListUtilsHook<T> {
    public boolean test(T t);
}
