package com.crewfactory.main.util;

public class MakeDescript {
	
	public String removeTag(String text) {
		return text.replaceAll("<(/)?([a-zA-Z]*)(\\\\s[a-zA-Z]*=[^>]*)?(\\\\s)*(/)?>","");
	}

}
