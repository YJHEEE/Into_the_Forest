package com.forest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forest.model.service.StampPostService;
import com.forest.model.vo.Mount;
import com.forest.model.vo.StampPost;
import com.forest.model.vo.StampRank;
import com.kh.mvc.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("community")
@Controller
public class CommunityController {

	@Autowired
	StampPostService service;

	@GetMapping("/boardWrite")
	public void boardWrite() {
		log.info("게시글 작성 요청 페이지");
	}

//	@GetMapping("/boardWrite")
//	public ModelAndView boardWrite(ModelAndView model, HttpServletRequest request,
////			@SessionAttribute(name="loginMember", required=false) Member loginMember, 게시판 작성한 회원 정보 가져오기
//			@ModelAttribute Board board,
//			@RequestParam("upfile") MultipartFile upfile) {
//		log.info("게시글 작성 요청");
//		
//		// board에 회원 아이디 넣기
////		board.setWriterNo(loginMember.getNo());
//		
//		if(upfile != null && upfile.isEmpty() == false) {
//			// 파일을 저장하는 로직
//			String rootPath = request.getSession().getServletContext().getRealPath("resources");
//			String savePath = rootPath + "/upload/board";
//			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 코드
//
//			if (renameFileName != null) {
//				board.setOriginalFileName(upfile.getOriginalFilename());
//				board.setRenamedFileName(renameFileName);
//			}
//		}
//		
//		System.out.println(board);
//
//		int result = service.saveBoard(board);
//
//		if (result > 0) {
//			model.addObject("msg", "게시글이 정상적으로 등록되었습니다.");
//			model.addObject("location", "/board/list");
//		} else {
//			model.addObject("msg", "게시글이 등록을 실패하였습니다.");
//			model.addObject("location", "/board/list");
//		}
//
//		model.setViewName("/common/msg");
//		
//		return model;
//	}

	@GetMapping("/communityBoard")
	public String communityBoard() {
		return "/community/communityBoard";
	}

//	@GetMapping("/communityBoard")
//	public ModelAndView communityBoard(ModelAndView model,
//			@RequestParam(value="page", required=false,defaultValue="1") int page) {
//		
//		PageInfo pageInfo = new PageInfo(page, 5, service.getBoardCount(), 10);
//		List<Board> list = service.getBoardList(pageInfo);
//		
//		model.addObject("list", list);
//		model.addObject("pageInfo", pageInfo);
//		model.setViewName("community/communityBoard");
//		
//		return model;
//	}

	@GetMapping("/communityQandA")
	public String communityQandA() {
		return "/community/communityQandA";
	}

	@GetMapping("/communityQandAFandA")
	public String communityQandAFandA() {
		return "/community/communityQandAFandA";
	}

	@GetMapping("/communityQandANotice")
	public String communityQandANotice() {
		return "/community/communityQandANotice";
	}

	@GetMapping("/communityReview")
	public String communityReview() {
		return "/community/communityReview";
	}

	@GetMapping("/communityReviewPost")
	public String communityReviewPost() {
		return "/community/communityReviewPost";
	}

	@RequestMapping("/communityStamp")
	public ModelAndView stampPage(ModelAndView model,String id) {

		List<StampRank> list = service.findAllRank();
		List<StampRank> list2 = service.getHofUserId(id);

		model.addObject("list", list);
		model.addObject("list2", list2);
		model.setViewName("/community/communityStamp");
		return model;
	}

	@GetMapping("/communityStampManager")
	public String communityStampManager() {
		return "/community/communityStampManager";
	}

}
