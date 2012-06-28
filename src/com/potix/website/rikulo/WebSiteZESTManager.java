package com.potix.website.rikulo;

import javax.servlet.ServletContext;

import org.zkoss.zest.sys.Parser;
import org.zkoss.zest.sys.ZestManager;


public class WebSiteZESTManager extends ZestManager {
	private static ServletContext sContext;

	public void init(javax.servlet.ServletContext ctx, Parser parser) {
		super.init(ctx, parser);
		sContext = ctx;
	}

	protected boolean pathIgnored(String path, String extension, String[] allowedExts) {
		if (allowedExts != null) {
			if (extension.matches(".*[0-9]$") || extension.toLowerCase()
				.matches(".*(rc|rc[0-9]|beta|beta[0-9])$")) {
				return false;
			};
			for (int j = 0; j < allowedExts.length; ++j)
				if (extension.equals(allowedExts[j]))
					return false; // matached
		}
		return true;
		
	}
}
