package com.potix.website.rikulo.filter;

import org.apache.log4j.Logger;
import org.mozilla.javascript.ErrorReporter;
import org.mozilla.javascript.EvaluatorException;

public class CompressorFilterErrorReporter implements ErrorReporter {
	private static final Logger log = Logger.getLogger(CompressorFilterErrorReporter.class);

	public void warning(String message, String sourceName, int line, String lineSource, int lineOffset) {
		if (line < 0) {
			log.warn(message);
		} else {
			log.warn(line + ':' + lineOffset + ':' + message);
		}
	}

	public void error(String message, String sourceName, int line, String lineSource, int lineOffset) {
		if (line < 0) {
			log.error(message);
		} else {
			log.error(line + ':' + lineOffset + ':' + message);
		}
	}

	public EvaluatorException runtimeError(String message, String sourceName, int line, String lineSource,
			int lineOffset) {
		error(message, sourceName, line, lineSource, lineOffset);
		return new EvaluatorException(message);
	}
}
