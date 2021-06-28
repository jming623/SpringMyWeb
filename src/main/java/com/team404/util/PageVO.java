package com.team404.util;

import lombok.Data;

@Data
public class PageVO {
	
	private int startPage; //첫페이지 번호
	private int endPage; //마지막페이지 번호
	private boolean next; //다음버튼 활성화
	private boolean prev; //이전버튼 활성화
	private int total; //총 게시글 수
	
	private int pageNum; //조회하는 페이지번호(cri안에도 존재함)
	private int amount; //보여질 데이터 갯수	
	private Criteria cri; //검색작업시 사용됨
	
	//생성자
	public PageVO(Criteria cri, int total) {
		//번호, 개수, 총 게시글 수 초기화
		this.pageNum = cri.getPageNum();
		this.amount = cri.getAmount();
		this.total = total;
		this.cri = cri;
		
		//끝페이지
		//pageNum이 5번이라면 -> endPage는 10
		//pageNum이 11번이라면 -> endPage는 20
		//(int)Math.ceil(pageNum/보여질 페이지 수) * 보여질 페이지 수
		//11일때 (int)Math.ceil(11/10.0) * 10
		this.endPage = (int)Math.ceil(this.pageNum / 10.0) * 10;
		
		//시작페이지
		//끝페이지 - 보여질페이지 수 + 1
		this.startPage = this.endPage - 10 + 1;
		
		//실제 마지막 번호
		//예를 들어 게시글이 53개 -> 마지막 끝페이지 번호는 6 , 게시글이 112개라면 마지막 끝페이지 번호는 12
		//(int)Math.ceil(전체게시글 수 / 화면에 뿌려질 데이터 개수 amount값)
		int realEnd = (int)Math.ceil(this.total / (double)this.amount);
		
		//endPage를 다시계산
		//예를 들어서  404개의 게시글 -> endPage공식을 따라가면 50번이 된다. 
		//realEnd는 41번이 된다.
		if(this.endPage > realEnd) {
			this.endPage = realEnd;//즉 마지막에 도달햇을 떄 보여질 번호를 변경
		}
		
		//이전버튼 활성화 여부
		//startPage는 1, 11, 21, 31.....
		this.prev = this.startPage > 1;
		
		//다음버튼 활성화 여부
		this.next = realEnd > this.endPage; 
	}
}
