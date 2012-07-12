package com.potix.website.rikulo.action;

import org.zkoss.zest.ParameterIgnored;

import com.potix.website.rikulo.WebConsts;

public class WebsiteAction implements ParameterIgnored {

	public String getDataDirectory() {
		return WebConsts.DATA_DIR;
	}

	public String getPartialResource() {
		return WebConsts.PARTIAL_DIR;
	}

	public String getTemplateResource() {
		return WebConsts.TEMPLATE_DIR;
	}

	public String getTemplate() {
		return WebConsts.TEMPLATE_MAIN;
	}

}
