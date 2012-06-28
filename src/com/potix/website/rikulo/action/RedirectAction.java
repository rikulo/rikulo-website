package com.potix.website.rikulo.action;

import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletRequest;

import org.zkoss.zest.ActionContext;

public class RedirectAction extends WebsiteAction {
	private String resourceUrl;

	private void dspUrlConverter(ActionContext ac) {
		HttpServletRequest req = ac.getServletRequest();
		String url = req.getRequestURI();
		if (url.endsWith(".dsp")) {
			resourceUrl = url.replaceAll(".dsp", ".jsp");
		} else if (url.endsWith("/")) {
			resourceUrl = url + "index.jsp";
		} else {
			resourceUrl = (url.split("/").length == 2) ? url + "/index.jsp" : url + ".jsp";
		}
	}

	public String getResourceUrl() {
		return resourceUrl;
	}

	public String getResourcePath() {
		return getDataDirectory() + resourceUrl;
	}

	public String execute(ActionContext ac) throws FileNotFoundException {
		dspUrlConverter(ac);
		return "success";
	}

}
