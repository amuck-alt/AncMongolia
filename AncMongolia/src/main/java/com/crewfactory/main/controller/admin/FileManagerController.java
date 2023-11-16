package com.crewfactory.main.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.service.FileManagerService;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@RestController
public class FileManagerController {
	
	private static final Logger logger = LoggerFactory.getLogger(FileManagerController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download-dir}")
	String downloadPath;
	
	@Autowired
	FileManagerService fs;
	
	
	@ResponseBody
	@RequestMapping(value = "/data/upload.do", method = {RequestMethod.POST, RequestMethod.GET})
	public void doGet (@RequestParam(value="upload", required = false) MultipartFile fileload,
	        HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("============== ckeditor file upload start =================");
		String folder = "data";
		JSONObject jso = new JSONObject();
		try {
            FileManagerDomain fd = fs.upload(fileload, folder, realpath);
            logger.info(String.format("getpath ============= %s", fd.getPath()));
            //String upurl = "https://www.crew-icn.com"+fd.getPath();
            String upurl = ""+fd.getPath();
            jso.put("uploaded", true);
            jso.put("url", upurl);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print(jso.toString());
        } catch (Exception ex) { 
        	logger.info("file upload failed ============= %s", ex);
            jso.put("uploaded", false);            
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print(jso.toString());
        }
	}
	
	@ResponseBody
	@GetMapping("/fckicbalAzBzCzdef/docs/data/{path}/{id}")
	protected void doGet (@PathVariable String id, @PathVariable String path, HttpServletResponse response) throws IOException, ServletException {
		logger.info("<<<<<<<<<<<<<<<< filedownloader >>>>>>>>>>>>>>>>");
		logger.info("filePath ==================================" + path);
		logger.info("fileName ==================================" + id);
		logger.info("outstream =================================" + response.getOutputStream().toString());
		try {
			fs.to("data", path, id, response.getOutputStream());
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}
	
	@ResponseBody
    @GetMapping("/data/download.do")
	public void doDownload(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException {
		String path = downloadPath + request.getParameter("filepath");
		String name = request.getParameter("filename");
		logger.info("file down path ==========================" + path);
		
		String fileName = URLEncoder.encode(name, "UTF-8");
		response.reset();
		response.setContentType("application/octet-stream");
    	response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
    	//response.setHeader("Content-Transfer-Encoding", "binary");  
    	//response.setHeader("Pragma", "no-cache");  
    	//response.setHeader("Expires", "-1"); 
    	
    	
    	try (FileInputStream fileInputStream = new FileInputStream(path)) {
			OutputStream out = response.getOutputStream();
			
			int read = 0;
			byte[] buffer = new byte[1024];
			while ((read = fileInputStream.read(buffer)) != -1) {
			    out.write(buffer, 0, read);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
