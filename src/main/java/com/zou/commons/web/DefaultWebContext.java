package com.zou.commons.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by zzf on 2016/12/30.
 */
public class DefaultWebContext implements IWebContext  {
    private HttpServletRequest request;
    private HttpServletResponse response;
    private HttpSession session;

    @Override
    public HttpServletRequest getRequest() {
        return request;
    }


    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public HttpSession getSession() {
        return session;
    }

    public void setSession(HttpSession session) {
        this.session = session;
    }

    public void setSessionAttr(String key, Object value) {
        if (session != null) {
            session.setAttribute(key, value);
        }
    }

    public Object getSessionAttr(String key) {
        if (session != null) {
            return session.getAttribute(key);
        }
        return null;
    }
    public void removeSessionAttr(String key) {
        if (session != null) {
            session.removeAttribute(key);
        }
    }

    public void setRequestAttr(String key, Object value) {
        if (request != null) {
            request.setAttribute(key, value);
        }
    }

    public Object getRequestAttr(String key) {
        if (request != null) {
            request.getAttribute(key);
        }
        return null;
    }

    public void removeRequestAttr(String key) {
        if (request != null) {
            request.removeAttribute(key);
        }
    }
}
