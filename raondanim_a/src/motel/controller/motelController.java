package motel.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import motel.service.BoardService;

//숙박 관련 컨트롤러

@Controller
@RequestMapping("/motel")
public class motelController {
	@Autowired
	private BoardService service;
	
	private static final String FILE_PATH = "c:/tmp/";
	
	@RequestMapping("/motelList")
	public String motelList() {
		System.out.println("motel : 숙박 리스트 요청");
		System.out.println(service.getBoardByNum(261));
		return "";
	}
	@RequestMapping("/boardList")
	public String boardList(@RequestParam(value="page",defaultValue="1")int page,
			Model model,@RequestParam(required=false)String keyword, 
			@RequestParam(defaultValue="0")int type) {
		/*model.addAttribute("boardList",boardService.getBoardList(page));*/
		System.out.println("컨트롤러 요청");
		Map<String, Object>params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("keyword", keyword);
		params.put("type", type);
		System.out.println(params);
		System.out.println(service.getViewData(params));
		
		/*model.addAttribute("replyCount",boardService.replyCount());*/
		/*model.addAllAttributes(service.getViewData(params));*/
		
		return "motel/boardList";
	}
	@RequestMapping(value="/test", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> test1(@RequestParam(value="page",defaultValue="1")int page,
			@RequestParam(required=false)String keyword,
			@RequestParam(defaultValue="0")int type,
			Model model) {
		System.out.println("ajax 요청");
		Map<String, Object>params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("keyword", keyword);
		params.put("type", type);
		/*model.addAllAttributes(boardService.getViewData(params));*/
		Map<String, Object>result = new HashMap<String, Object>();
		result.put("board", service.getViewData(params));
		System.out.println(result);
		
		return result;
	}
	
	//이미지를 가져오는 메서드
	@ResponseBody
	@RequestMapping("/image")
	public byte[] getImage(String fileName) {
		System.out.println("/image 요청 : "+fileName);
		File file = new File(FILE_PATH+fileName);
		InputStream in = null;
		try {
			in = new FileInputStream(file);
			return IOUtils.toByteArray(in);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//해당 이미지를 byte[]의 형태로 반환
 catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
}
