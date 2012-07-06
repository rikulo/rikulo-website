package com.potix.website.rikulo;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletContext;

public class WebConsts {

	public final static String DATA_DIR = "/data";
	public final static String STATIC_DIR = "/resource";
	public final static String STATIC_DIR_FILE = "/resource/file";
	public final static String PARTIAL_DIR = "/WEB-INF/partial";
	public final static String TEMPLATE_DIR = "/WEB-INF/templates";
	public final static String TEMPLATE_MAIN = "/WEB-INF/templates/generic.jsp";
	public final static String CONF_DIR = "/WEB-INF/conf/";
	private static Properties productProps;
	static {
		productProps = new Properties();
	}

	public static String getLastQueryName(String query) {
		return query.substring(query.lastIndexOf("/") + 1, query.length()).replace(".jsp", "");
	}

	/*
	 * Query : /xxx/zk -> ZK , /ooo/zkstudio -> ZK Studio
	 */
	public static String getProductNameByQueryString(String query, ServletContext sc) {
		return getProductName(getLastQueryName(query), sc);
	}

	public static String getProductName(String alias, ServletContext sc) {
		try {
			productProps.load(new FileInputStream(sc.getRealPath(CONF_DIR + "product.properties")));
		} catch (IOException e) {

			e.printStackTrace();
		}

		if (productProps.containsKey(alias))
			return productProps.getProperty(alias).toString();
		else if (alias.matches(".*[0-9]+$")) {
			// Test alias string "ZkStudiO3.6" or "ZK2.425261"
			for (int i = 0; i < alias.length(); i++) {
				if (Character.isDigit(alias.charAt(i))) {
					String ver = alias.substring(i);
					String pn = alias.substring(0, i).toLowerCase();
					if (!productProps.containsKey(pn))
						return pn;
					return productProps.get(pn).toString() + " " + ver;
				}
			}
		}
		return null;
	}
}
