package fa.training.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public final class Log4J {
	private final static Logger LOGGER = LogManager.getLogger(Log4J.class);
	private Log4J() {
		super();
	}

	public static Logger getLogger() {
		return LOGGER;
	}
}