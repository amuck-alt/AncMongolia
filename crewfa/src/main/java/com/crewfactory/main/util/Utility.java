package com.crewfactory.main.util;

import java.util.regex.Matcher;

import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

public class Utility {
	private static final Logger logger = LoggerFactory.getLogger(Utility.class);
	
	@Value("${file.download.url}")
	String contextpath;
	
	public String removeTag(String text) {
		String txt = "";
		text = text.replaceAll("<(/)?([a-zA-Z]*)(\\\\s[a-zA-Z]*=[^>]*)?(\\\\s)*(/)?>","");
		txt = text.replaceAll("<[^>]*>", "");
		Pattern p = Pattern.compile("<img.*?>", Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(txt);
		txt = m.replaceAll("");
		return txt;
	}
	
	public String limitText(String text, int num) {
		if(text.length() > num) {
			text.substring(0, num);
		}
		return text;
	}
	
	public String modifyEditorTxt(String text) {
		Pattern p = Pattern.compile("/fckicbalAzBzCzdef", Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(text);
		text = m.replaceAll("");
		logger.info("text =========== " + text);
		return text;
	}
	
	public String extractDomain(String txt) {
		String domain = "";
		Pattern urlPattern = Pattern.compile("^(https?):\\/\\/([^:\\/\\s]+)(:([^\\/]*))?((\\/[^\\s/\\/]+)*)?\\/([^#\\s\\?]*)(\\?([^#\\s]*))?(#(\\w*))?$");
		Matcher mc = urlPattern.matcher(txt);
		   
		if(mc.matches()){
			for(int i=0; i<=mc.groupCount(); i++) {
				domain = mc.group(2);
			}
		}else { 
			domain = "unknown";
		}
		return domain;
	}

}
