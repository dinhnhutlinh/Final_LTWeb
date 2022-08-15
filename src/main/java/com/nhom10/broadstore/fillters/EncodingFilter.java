package com.nhom10.broadstore.fillters;

import javax.servlet.*;
import java.io.IOException;

public class EncodingFilter implements Filter {

    private String encoding = "utf-8";
    private ServletRequest request;
    private ServletResponse response;
    private FilterChain filterChain;

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
        this.request = request;
        this.response = response;
        this.filterChain = filterChain;
        request.setCharacterEncoding(encoding);
        response.setCharacterEncoding(encoding);
        filterChain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig filterConfig)
            throws ServletException {
        String encodingParam =
                filterConfig.getInitParameter("encoding");
        if (encodingParam != null) {
            encoding = encodingParam;
        }
    }

    public void destroy() {
        // nothing todo
    }

}