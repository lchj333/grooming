package com.grooming.utils;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	//실제 파일 저장 메소드
	public String saveFile(MultipartFile mfile, String Path) throws IllegalStateException, IOException {
		//문자열 요리
		String originalFile = mfile.getOriginalFilename();
		String originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		
		//파일 저장 (realPath + filePath)
		File file = new File(Path + storedFileName) ;//realPath : 톰캣내의 주소
		mfile.transferTo(file);
			
		//체크
		System.out.println("file.getPath() : "+file.getPath());
//		System.out.println(originalFile + "은 업로드한 파일이다.");
		System.out.println(storedFileName + "라는 이름으로 업로드 됐다.");
//		System.out.println("파일사이즈는 " + mfile.getSize());
	
		//실제 저장되는 파일이름 리턴
		return storedFileName;
	}
}
