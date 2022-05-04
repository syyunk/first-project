package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class KakaoPayReadyVO {
	private String tid;	// 결제 고유 번호
	private String next_redirect_app_url; // 모바일 앱인 경우 결제 페이지 redirect url
	private String next_redirect_mobile_url; // 모바일 웹인 경우
	private String next_redirect_pc_url;  // PC웹일 경우 오쳥 메세지 보내기 ㅜ이한 사용자 정보 입력화면 redirect url
	private Date created_at;
	private Long onum; // DB상 주문 데이터 seq
	private MemberCVO member;
	private Long cpnum; // 일반 결제일때는 쿠폰 번호, 정기결제는 상품번호
}
