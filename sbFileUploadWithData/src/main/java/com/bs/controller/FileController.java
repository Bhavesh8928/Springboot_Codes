package com.bs.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.*;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.bs.modal.FileUpload;
import com.bs.repository.FileRepository;
import com.bs.services.FileService;

@Controller
public class FileController 
{
	@Autowired
	private FileService fileService;
	@Autowired
	private FileRepository fileRepository;
	
	@GetMapping("/form")
	public String form()
	{
		return "form";
	}
	
	@PostMapping("/upload")
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("firstname") String fName,
	@RequestParam("lastname") String lName, @RequestParam("email") String email1) 
	{
	    try {
	        // Create a new FileData object and set its properties
	        FileUpload fileData = new FileUpload();
	        fileData.setFirstname(fName);
	        fileData.setLastname(lName);
	        fileData.setEmail(email1);
	        fileData.setData(file.getBytes());
	        fileData.setContentType(file.getContentType());
	        fileData.setFileName(StringUtils.cleanPath(file.getOriginalFilename()));	                
	        
	        // Save the file data to the database
	        fileRepository.save(fileData);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }

	    return "uploadsuccess";
	}

//	@PostMapping("/upload")
//	public ResponseEntity<String> handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("firstName") String fName,
//			@RequestParam("lastName") String lName, @RequestParam("email") String email1) 
//	{
//		FileUpload sb = new FileUpload();
//		sb.setFirstName(fName);
//		sb.setLastName(lName);
//		sb.setEmail(email1);
//		fileService.saveData(sb);
//		try 
//		{
//			fileService.saveFile(file);
//			return ResponseEntity.ok("File uploaded successfully");
//		} catch (IOException e) {
//			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to upload file");
//		}
//	}

//	@PostMapping("/upload1")
//	public ResponseEntity<String> handleFileUpload1(@RequestParam("file") MultipartFile file) {
//		try {
//			fileService.saveFile(file);
//			return ResponseEntity.ok("File uploaded successfully");
//		} catch (IOException e) {
//			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to upload file");
//		}
//	}
	
}
