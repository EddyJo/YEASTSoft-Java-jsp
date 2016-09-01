package kr.co.javaspecialist.common.listener;

import java.net.URL;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import scriptella.execution.EtlExecutor;
import scriptella.execution.EtlExecutorException;

public class WebDBInitializer implements ServletContextListener {

    private static final String WEBINIT_PATH = "/WEB-INF/classes/db/hsqldb/database.init.xml";
	static final Logger logger = Logger.getLogger(WebDBInitializer.class);

    static void initDatabase(URL etlUrl) throws EtlExecutorException {
        EtlExecutor exec = EtlExecutor.newExecutor(etlUrl);
        exec.execute();
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext ctx = servletContextEvent.getServletContext();
        try {
            initDatabase(ctx.getResource(WEBINIT_PATH));
            logger.info("DB script executed");
        } catch (Exception e) {
        	logger.error("Unable to execute DB script", e);
        }
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent arg0)  { 
    }

}
