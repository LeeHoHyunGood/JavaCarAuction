package com.springgame.view.file;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileUploadController {
	
//	@RequestMapping(value = "/ajaxUpload.do")
//    public String ajaxUpload() {
//        return "ajaxUpload.jsp";
//    }
//     
//    @RequestMapping(value = "/fileUpload.do")
//    public String fileUp(MultipartHttpServletRequest multi) {
//         
//        // 저장 경로 설정
////        String path = "D:\\";
//    	String root = multi.getSession().getServletContext().getRealPath("/");
//        String path = root+"resources/upload/";
//        System.out.println(path);
//
//        String newFileName = ""; // 업로드 되는 파일명
//        System.out.println(newFileName);
//        File dir = new File(path);
//        if(!dir.isDirectory()){
//            dir.mkdir();
//        }
//         
//        Iterator<String> files = multi.getFileNames();
//        while(files.hasNext()){
//            String uploadFile = files.next();
//                         
//            MultipartFile mFile = multi.getFile(uploadFile);
//            String fileName = mFile.getOriginalFilename();
//            System.out.println("실제 파일 이름 : " +fileName);
//            newFileName = System.currentTimeMillis()+"."
//                    +fileName.substring(fileName.lastIndexOf(".")+1);
//             
//            try {
//                mFile.transferTo(new File(path+newFileName));
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//         
//        System.out.println("id : " + multi.getParameter("id"));
//        System.out.println("pw : " + multi.getParameter("pw"));
//         
//        return "ajaxUpload.do";
//    }
//	private static final int RESULT_EXCEED_SIZE = -2;
//    private static final int RESULT_UNACCEPTED_EXTENSION = -1;
//    private static final int RESULT_SUCCESS = 1;
//    private static final long LIMIT_SIZE = 10 * 1024 * 1024;
//    
//	@RequestMapping("/")
//    public String main() {
//        return "index";
//    }
// 
//    //로직은 언제나 Service에서 짜도록 하자.
//    //중간실패시 rollback은 고려하지 않았음.
//    @ResponseBody
//    @RequestMapping(value="/fileUpload.do", method=RequestMethod.POST)
//    public int multiImageUpload(@RequestParam("files")List<MultipartFile> images, MultipartHttpServletRequest multi, HttpSession sess) {
//        long sizeSum = 0;
//        for(MultipartFile image : images) {
//            String originalName = image.getOriginalFilename();
//            //확장자 검사
//            if(!isValidExtension(originalName)){
//                return RESULT_UNACCEPTED_EXTENSION;
//            }
//            
//            //용량 검사
//            sizeSum += image.getSize();
//            if(sizeSum >= LIMIT_SIZE) {
//                return RESULT_EXCEED_SIZE;
//            }
//            
//            //TODO 저장..
//            String path = "D:\\";
//            String newFileName = "";
//            System.out.println(path);
//                           
//              String fileName = image.getOriginalFilename();
//              System.out.println("실제 파일 이름 : " +fileName);
//              newFileName = System.currentTimeMillis()+"."
//                      +fileName.substring(fileName.lastIndexOf(".")+1);
//               
//              try {
//            	  image.transferTo(new File(path+newFileName));
//              } catch (Exception e) {
//                  e.printStackTrace();
//              }
//
//        }
//        System.out.println(" : " + multi.getParameter("content"));
//        sess.setAttribute("imgss", "resources/img/thumb/cS-1.jpg");
//        //실제로는 저장 후 이미지를 불러올 위치를 콜백반환하거나,
//        //특정 행위를 유도하는 값을 주는 것이 옳은 것 같다.
//        return RESULT_SUCCESS;
//    }
//    
//    //required above jdk 1.7 - switch(String)
//    private boolean isValidExtension(String originalName) {
//        String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1);
//        switch(originalNameExtension) {
//        case "jpg":
//        case "png":
//        case "gif":
//            return true;
//        }
//        return false;
//    }
}