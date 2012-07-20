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
	
	public static boolean isiPhone(String ua) {
		return ua.indexOf("iphone") != -1;
	}
	
	public static boolean isIOS(String ua) {
		return isiPad(ua) || isiPhone(ua);
	}
	
	public static boolean isAndroid(String ua) {
		return ua.indexOf("android") != -1;
	}
	
	public static boolean isMobile (String ua) {
		return isIOS(ua) || isAndroid(ua);
	}
	
	public static boolean isAndroidPhone(String ua) {
		return isAndroid(ua) && ua.indexOf("Mobile") != -1;
	}
	
	public static boolean isAndroidTablet(String ua) {
		return isAndroid(ua) && ua.indexOf("Mobile") == -1;
	}
	
	public static boolean isTablet(String ua) {
		return isiPad(ua) || isAndroidTablet(ua);
	}
	
	public static boolean isPhone(String ua) {
		return isiPhone(ua) || isAndroidPhone(ua);
	}
}
