package com.crewfactory.main.util;

import java.net.MalformedURLException;
import java.net.URL;
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
	
	public String getDomainName(String url) throws MalformedURLException{
	    if(!url.startsWith("http") && !url.startsWith("https")){
	         url = "http://" + url;
	    }        
	    URL netUrl = new URL(url);
	    String Host = netUrl.getHost();
	    if(Host.startsWith("www")){
	        Host = Host.substring("www".length()+1);
	    }
	    return Host;
	}
	
	public String checkSector(String txt) {
		String sector = "";
		if(txt.indexOf("facebook") > -1) sector = "facebook";
		if(txt.indexOf("instagram") > -1) sector = "instagram";
		if(txt.indexOf("naver") > -1) sector = "naver";
		if(txt.indexOf("search.naver") > -1) sector = "naver";
		if(txt.indexOf("blog.naver") > -1) sector = "blog.naver";
		if(txt.indexOf("cafe.naver") > -1) sector = "cafe.naver";
		if(txt.indexOf("place.naver") > -1) sector = "place.naver";
		if(txt.indexOf("map.naver") > -1) sector = "map.naver";
		if(txt.indexOf("kin.naver") > -1) sector = "kin.naver";
		if(txt.indexOf("google") > -1) sector = "google";
		if(txt.indexOf("daum") > -1) sector = "daum";
		return sector;
	}
	
	public String getKeyword(String str1, String str2) {
		
		String keyword = "";
		String[] array1 = str1.split("&");
		String[] array2 = str2.split("&");
		
		for (int i = 0; i < array1.length; i++) {				
			// 데스크탑버전 네이버 키워드광고
			if (array1[i].indexOf("n_keyword=") > -1 ) { 
				keyword = array1[i].toString();
				keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
				break;
			// PC버전 네이버 웹사이트, 네이버의 웹사이트로 들어오는 이전검색어는 스킵함.
			}else if (array1[i].indexOf("query=") > -1 && array1[i].indexOf("oquery=") < 0) {
				keyword = array1[i].toString();
				keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
				break;
			} else if (array1[i].indexOf("q=") > -1 && array1[i].indexOf("oq=") < 0 && str1.indexOf("naver.com") < 0) {
				keyword = array1[i].toString();
				keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
				break;
			} else {
				keyword = "";
			}
			
			if(!"".contentEquals(keyword)) {
				keyword = getHanGul(keyword);
			}
		}
		
		for (int i = 0; i < array2.length; i++) {				
			// 데스크탑버전 네이버 키워드광고
			if (array2[i].indexOf("n_keyword=") > -1 ) { 
				keyword = array2[i].toString();
				keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
				//keyword = this.decoding(keyword);
				break;
			// PC버전 네이버 웹사이트, 네이버의 웹사이트로 들어오는 이전검색어는 스킵함.
			}else if (array2[i].indexOf("query=") > -1 && array2[i].indexOf("oquery=") < 0) {
				keyword = array2[i].toString();
				keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
				//keyword = this.decoding(keyword);
				break;
			} else if (array2[i].indexOf("q=") > -1 && array2[i].indexOf("oq=") < 0 && str2.indexOf("naver.com") < 0) {
				keyword = array2[i].toString();
				keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
				break;
			}
			
			if(!"".contentEquals(keyword)) {
				keyword = getHanGul(keyword);
			}
		}
		
		return keyword;
	}
	

	public String getSector(String str, String current) throws MalformedURLException {
		String sector = "";
		if(str.indexOf("facebook") > -1){ sector = "facebook"; }
		else if(str.indexOf("instagram") > -1){ sector = "instagram"; }
		else if(str.indexOf("search.naver") > -1){
			
			if(current.indexOf("n_keyword") > -1) {
				sector = "power.search";
			}else {
				sector = "search.naver";
			}
		}
		else if(str.indexOf("n_keyword") > -1){ sector = "power.naver"; }
		else if(str.indexOf("blog.naver") > -1){ sector = "blog.naver"; }
		else if(str.indexOf("cafe.naver") > -1){ sector = "cafe.naver"; }
		else if(str.indexOf("place.naver") > -1){ sector = "place.naver"; }
		else if(str.indexOf("map.naver") > -1){ sector = "map.naver"; }
		else if(str.indexOf("kin.naver") > -1){ sector = "kin.naver"; }
		else if(str.indexOf("google") > -1){ sector = "google"; }
		else if(str.indexOf("daum") > -1){ sector = "daum"; }
		else if(str.indexOf("tistory") > -1){ sector = "tistory"; }
		else {
			sector = getDomainName(str);
		}
		return sector;
	}
	
	//들어온 문자열이 한글의 유니코드(0xAC00 ~ 0xD743) 범위에 들어오는지 판단
	private static boolean checkHan(char chavalue) {
		if(chavalue >= 0xAC00 && chavalue <= 0xD743) {
			return true;
		}else {
			return false;
		}		
	}
	
	public String getHanGul(String str){
		StringBuffer hangul = new StringBuffer();   
		for(int i= 0;i < str.length();i++) {
			if(checkHan(str.charAt(i)) ) {
				hangul.append(str.charAt(i));
			}
		}
		return hangul.toString(); 
	}	

}
