package service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import beans.BoardDTO;
import model.BoardDAO;

public class ImgUpload {
	@SuppressWarnings("deprecation")
	public int test(HttpServletRequest request) throws IOException {
		// 1. 업로드 옵션
		String save = request.getRealPath("board/img");
		String encoding = "utf-8";
		int size = 1024 * 1024 * 10; 
		DefaultFileRenamePolicy drp = new DefaultFileRenamePolicy();
		// * 같은 파일이름을 업로드하면 파일이름1, 파일이름2 형태로 저장됨
		
		// 2. 업로드 진행
		MultipartRequest mr;
		mr = new MultipartRequest(request, save, size, encoding, drp);
		
		// 3. DAO에 전달할 인자 설정
		File file = mr.getFile("upload");
		BoardDTO args = new BoardDTO();
	
		
		String fileName = (file == null) ? "default.png" : file.getName();
		// * 파일을 업로드하지 않았을 때 null 예외 처리
		
		args.setContents(mr.getParameter("contents"));
		args.setImg_path("img/" + fileName);
		args.setTitle(mr.getParameter("title"));
		args.setWriter(mr.getParameter("writer"));
		
		// 4. DAO로 DB에 등록
		BoardDAO dao = new BoardDAO();
		
		return dao.insert(args);
	}
}
