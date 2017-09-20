package net.barayand.sample.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.ResourceBundle;

@WebFilter("/*")
public class ResourceFilter implements Filter {

    public void destroy() {

    }

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try {
            response.setCharacterEncoding("UTF-8");
        } finally {
            chain.doFilter(request, response);
        }
    }
}
