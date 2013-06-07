package com.potix.website.rikulo.filter;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.yahoo.platform.yui.compressor.CssCompressor;
import com.yahoo.platform.yui.compressor.JavaScriptCompressor;

public class CompressorFilter implements Filter {
	private static final Logger log = Logger.getLogger(CompressorFilter.class);
	private FilterConfig filterConfig;

	private int lineBreakPos = -1; // Insert a line break after the specified
									// column number
	private boolean warn = false; // Display possible errors in the code
	private boolean munge = true; // Minify only, do not obfuscate
	private boolean preserveAllSemiColons = false; // Preserve unnecessary
													// semicolons

	private static Map<String, String> cache = new Hashtable<String, String>();

	public static int getCacheSize() {
		return cache.size();
	}

	public static Set getCaches() {
		return cache.keySet();
	}

	public static void cleanCaches() {
		cache.clear();
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;

		String lineBreak = filterConfig.getInitParameter("line-break");
		if (lineBreak != null) {
			lineBreakPos = Integer.parseInt(lineBreak);
		}

		String warnString = filterConfig.getInitParameter("warn");
		if (warnString != null) {
			warn = Boolean.parseBoolean(warnString);
		}

		String noMungeString = filterConfig.getInitParameter("nomunge");
		if (noMungeString != null) {
			munge = Boolean.parseBoolean(noMungeString) ? false : true;
			// swap values because it's nomunge
		}

		String preserveAllSemiColonsString = filterConfig.getInitParameter("preserve-semi");
		if (preserveAllSemiColonsString != null) {
			preserveAllSemiColons = Boolean.parseBoolean(preserveAllSemiColonsString);
		}
	}

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		if (request.getRequestURI().startsWith("/zkau")) {
			filterChain.doFilter(servletRequest, servletResponse);
			return;
		}
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		ServletOutputStream servletOutputStream = response.getOutputStream();

		ServletContext context = filterConfig.getServletContext();
		String requestURI = request.getRequestURI();
		InputStream inputStream = context.getResourceAsStream(requestURI);
		if (requestURI.endsWith(".js")) {
			servletResponse.setContentType("application/x-javascript; charset=utf-8");
		} else {
			servletResponse.setContentType("text/css;charset=UTF-8");
		}
		writeFileToServletOutputStream(requestURI, inputStream, servletOutputStream);
	}

	private void writeFileToServletOutputStream(String requestURI, InputStream inputStream,
			ServletOutputStream servletOutputStream) throws IOException {
		if (!cache.containsKey(requestURI)) {
			String s;
			if (requestURI.endsWith(".js")) {
				s = getCompressedJavaScript(inputStream);
			} else if (requestURI.endsWith(".css")) {
				s = getCompressedCss(inputStream);
			} else {
				s = "This file format is not supported by this filter. Only .css and .js are supported";
			}
			cache.put(requestURI, s);
		}
		write(cache.get(requestURI), servletOutputStream, requestURI);
	}

	/**
	 * Write s to servletOutputStream
	 * 
	 * @param s
	 * @param servletOutputStream
	 */
	private void write(String s, ServletOutputStream servletOutputStream, String URI) {
		try {
			servletOutputStream.print(s);
		} catch (IOException e) {
			log.error("Error writing String to servletOutputStream: " + e.getMessage() + " from URI : " + URI);			
		}
	}

	/**
	 * Note that the inputStream is closed!
	 * 
	 * @param inputStream
	 * @throws IOException
	 */
	private String getCompressedJavaScript(InputStream inputStream) throws IOException {
		InputStreamReader isr = new InputStreamReader(inputStream);
		JavaScriptCompressor compressor = new JavaScriptCompressor(isr, new CompressorFilterErrorReporter());
		inputStream.close();

		StringWriter out = new StringWriter();
		compressor.compress(out, lineBreakPos, munge, warn, preserveAllSemiColons, false);
		out.flush();

		StringBuffer buffer = out.getBuffer();
		return buffer.toString();
	}

	/**
	 * Note that the inputStream is closed!
	 * 
	 * @param inputStream
	 * @throws IOException
	 */
	private String getCompressedCss(InputStream inputStream) throws IOException {
		InputStreamReader isr = new InputStreamReader(inputStream);
		CssCompressor compressor = new CssCompressor(isr);
		inputStream.close();

		StringWriter out = new StringWriter();
		compressor.compress(out, lineBreakPos);
		out.flush();

		StringBuffer buffer = out.getBuffer();
		return buffer.toString();
	}

	public void destroy() {
	}
}
