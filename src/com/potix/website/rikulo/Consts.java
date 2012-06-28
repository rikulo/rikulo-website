package com.potix.website.rikulo;

import java.text.SimpleDateFormat;

public class Consts {
	// For Menu
	public static final String MENU_CATEGORY = "MENU_CATEGORY";
	public static final String MENU_CATEGORY_DEMO = "MENU_CATEGORY_DEMO";
	public static final String MENU_CATEGORY_CONTRIBUTE = "MENU_CATEGORY_CONTRIBUTE";
	public static final String MENU_CATEGORY_DISCUSS = "MENU_CATEGORY_DISCUSS";
	public static final String MENU_CATEGORY_LEARN = "MENU_CATEGORY_LEARN";
	public static final String MENU_CATEGORY_BLOG = "MENU_CATEGORY_BLOG";
	
	
	
	
	// For Menu
	
	public static final String MENU_CATEGORY_PRODUCT = "MENU_CATEGORY_PRODUCT";
	
	public static final String MENU_CATEGORY_DOWNLOAD = "MENU_CATEGORY_DOWNLOAD";
	public static final String MENU_CATEGORY_WHYZK = "MENU_CATEGORY_WHYZK";
	public static final String MENU_CATEGORY_COMMUNITY = "MENU_CATEGORY_COMMUNITY";
	public static final String MENU_CATEGORY_DOC = "MENU_CATEGORY_DOC";
	public static final String MENU_CATEGORY_SUPPORT = "MENU_CATEGORY_SUPPORT";
	// For News System
	public static final String CATE_ALL_NUMBER = "_num";
	public static final String CATE_NEWS = "News";
	public static final String CATE_ARTI = "Articles";
	public static final String CATE_EVNT = "Events";
	public static final String[] CATEGORIES = { CATE_NEWS, CATE_ARTI, CATE_EVNT };
	// For News System Preview
	public static final String PREVIEW_NEWS = "PREVIEWNEWS";
	public static final String PREVIEW_URL = "/WEB-INF/templates/page/index_newsrow_preview.jsp";
	// Only These Seven Type Are Available
	public static final String TYPE_NEWS = "News";
	public static final String TYPE_RELEASE = "Release";
	public static final String TYPE_ARTICLE = "Article";
	public static final String TYPE_BLOG = "Blog";
	public static final String TYPE_SMALLTALK = "Small Talk";
	public static final String TYPE_HIGHLIGHT = "Highlight";
	public static final String TYPE_EVENT = "Event";
	public static final String[] TYPES = { TYPE_NEWS, TYPE_RELEASE, TYPE_ARTICLE, TYPE_BLOG, TYPE_SMALLTALK,
			TYPE_EVENT, TYPE_HIGHLIGHT };
	//
	public static final SimpleDateFormat DATEFORMAT = new SimpleDateFormat("yyyy-MM-dd");
	public static final SimpleDateFormat DATEFORMAT_DOC = new SimpleDateFormat("MMMMM dd, yyyy");
	public static final SimpleDateFormat SIMPLEDATEFORMAT = new SimpleDateFormat("MMM dd");
	public static final SimpleDateFormat MONTHFORMAT = new SimpleDateFormat("MMM");
	public static final SimpleDateFormat DAYFORMAT = new SimpleDateFormat("dd");

	public static final String TIMEZONE = "GMT+0";
	//
	public final static String FEED_TYPE = "rss_2.0";
	//
	public final static String POTIXPWD = "7895123741953";
	public final static String INTERNAL = "internal_login";
		
	//
	public static String getMenuCategory(String name) {
		if (name.contains("demo")) {
			return MENU_CATEGORY_DEMO;
		} else if (name.contains("product")) {
			return MENU_CATEGORY_PRODUCT;
		} else if (name.contains("download")) {
			return MENU_CATEGORY_DOWNLOAD;
		} else if (name.contains("whyzk") || name.contains("landing")) {
			return MENU_CATEGORY_WHYZK;
		} else if (name.contains("community")) {
			return MENU_CATEGORY_COMMUNITY;
		} else if (name.contains("document")) {
			return MENU_CATEGORY_DOC;
		} else if (name.contains("support") || name.contains("partner")) {
			return MENU_CATEGORY_SUPPORT;
		} else {
			return null;
		}
	}
}
