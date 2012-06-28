package com.potix.website.rikulo.util;

public class WebUtil {

	public static boolean isMSIE(String ua) {
		return ua.indexOf("msie") != -1;
	}

	public static Integer getIEVer(String ua) {
		return Integer.parseInt(ua.split("msie ")[1].substring(0, 1));
	}

	public static boolean isFirefox(String ua) {
		return ua.indexOf("firefox/") != -1;
	}

	public static Integer getFirefoxVer(String ua) {
		return Integer.parseInt(ua.split("firefox/")[1].substring(0, 1));
	}

	public static boolean isiPad(String ua) {
		return ua.indexOf("ipad") != -1;
	}
}
