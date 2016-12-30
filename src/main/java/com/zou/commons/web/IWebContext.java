package com.zou.commons.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by zzf on 2016/12/30.
 */
public interface IWebContext {
    HttpServletRequest getRequest();
    HttpServletResponse getResponse();
    void setSessionAttr(String key,Object value);
    Object getSessionAttr(String key);
    void removeSessionAttr(String key);

    void setRequestAttr(String key,Object value);
    Object getRequestAttr(String key);
    void removeRequestAttr(String key);
}
