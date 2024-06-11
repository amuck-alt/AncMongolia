package com.crewfactory.main.service;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.crewfactory.main.domain.FileManagerDomain;


@Service
public class FileManagerService {
	
	private static final Logger logger = LoggerFactory.getLogger(FileManagerService.class);
	
	@Value("${file.upload-dir}")
	String uploadPath;
	
	@Value("${file.upload-dir-logical}")
	String uploadPathLogical;
	
	public FileManagerDomain upload (MultipartFile file, String folder, String realpath) throws IOException {
		String path = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
		String id = UUID.randomUUID().toString();
		String extension = FilenameUtils.getExtension(file.getOriginalFilename());
		if (StringUtils.isEmpty(extension)) {
            id = id + ".no";
        }else {
        	id = id + "." + extension;
        }
		logger.info("upload ===============> " + String.format("%s%s%s%s%s%s%s", realpath, File.separator, folder, File.separator, path, File.separator, id));
		File save = new File(String.format("%s%s%s%s%s%s%s", realpath, File.separator, folder, File.separator, path, File.separator, id));
		FileUtils.forceMkdirParent(save);
        file.transferTo(save);
        return new FileManagerDomain(String.format("%s%s%s%s%s%s%s", "/docs", "/", folder, "/", path, "/", id), file.getOriginalFilename(), file.getSize());
    }
	
	public String uploadBlogData(MultipartFile file, String folder) throws IOException {
		String path = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
		String id = UUID.randomUUID().toString();
		String extension = FilenameUtils.getExtension(file.getOriginalFilename());
		if (StringUtils.isEmpty(extension)) {
            id = id + ".no";
        }else {
        	id = id + "." + extension;
        }
		logger.info("upload ===============> " + String.format("%s%s%s%s%s%s%s", uploadPath, File.separator, folder, File.separator, path, File.separator, id));
		File save = new File(String.format("%s%s%s%s%s%s%s", uploadPath, File.separator, folder, File.separator, path, File.separator, id));
		FileUtils.forceMkdirParent(save);
        file.transferTo(save);
        
		return String.format("%s%s%s", folder, path, id);
	}
	
	public boolean delfile(String file) throws IOException {
		
		return false;
	}
    
    public void to(String folder, String path, String id, OutputStream out) throws IOException {
    	IOUtils.copy(new ByteArrayInputStream(bytes(folder, path, id)), out);    
    }

	private byte[] bytes(String folder, String path, String id) throws IOException {
		return Files.readAllBytes(
                new File(String.format(
                            "%s%s%s%s%s%s%s",
                            uploadPath, "/", folder, "/",
                            path, "/", id)).toPath()
                    );
	}
}
