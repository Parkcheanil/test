<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
</style>
<title>거래처 조회</title>
</head>
<body>

	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>

	<form method="post">
	
		<!-- <button type="submit">등록</button><br /> -->

		<label>사업자번호</label> 
		${view.busi_num}
		
		<label>약   칭</label>
		${view.short_}<br /> 
		
		<label>거래처명</label> 
		${view.custom}<br />
		
		<label>대 표 자</label> 
		${view.ceo}
		
		<label>담 당 자</label> 
		${view.charge_person}<br />
		
		<label>업    태</label> 
		<input type="text" name="busi_condition" />
		
		<label>종    목</label> 
		<input type="text" name="item" /><br />
		
		<label>우편번호</label> 
		<input type="text" name="post_num" />
		
		<label>주 소 1</label> 
		<input type="text" name="addr1" /><br />
		
		<label>주 소 2</label> 
		<input type="text" name="addr2" /><br />
		
		<label>전화번호</label> 
		<input type="text" name="tel" />
		
		<label>팩스번호</label> 
		<input type="text" name="fax" /><br />
		
		<label>홈페이지</label> 
		<input type="text" name="homepage" /><br />
		
		<label>법인여부</label>
		<input type="radio" name="co_yn" value="corporation"/>법인
		<input type="radio" name="co_yn" value="individual"/>개인
		
		<label>해외여부</label> 
		<input type="radio" name="foreign_yn" value="domestic"/>국내
		<input type="radio" name="foreign_yn" value="overseas"/>해외<br /> 
		
		<label>과세구분</label> 
		<input type="text" name="tax_yn" /><br />
	
		<label>국   가</label> 
		<input type="text" name="country_eng" /><br />
		
		<label>특수관계자</label> 
		<input type="checkbox" name="country_kor" />
		
		<label>거래중지</label> 
		<input type="checkbox" name="special_relation" /><br />
		
		<div>계약기간<input type="text" id="datepicker"> ~ <input type="text" id="datepicker2">
	<!-- 		<script>
				$(function() {
					//모든 datepicker에 대한 공통 옵션 설정
					$.datepicker
							.setDefaults({
								dateFormat : 'yy-mm-dd' //Input Display Format 변경
								,
								showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
								,
								showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
								,
								changeYear : true //콤보박스에서 년 선택 가능
								,
								changeMonth : true //콤보박스에서 월 선택 가능                
								,
								showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
								,
								buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
								,
								buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
								,
								buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
								,
								yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
								,
								monthNamesShort : [ '1', '2', '3', '4', '5',
										'6', '7', '8', '9', '10', '11', '12' ] //달력의 월 부분 텍스트
								,
								monthNames : [ '1월', '2월', '3월', '4월', '5월',
										'6월', '7월', '8월', '9월', '10월', '11월',
										'12월' ] //달력의 월 부분 Tooltip 텍스트
								,
								dayNamesMin : [ '일', '월', '화', '수', '목', '금',
										'토' ] //달력의 요일 부분 텍스트
								,
								dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일',
										'금요일', '토요일' ] //달력의 요일 부분 Tooltip 텍스트
								,
								minDate : "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
								,
								maxDate : "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
							});

					//input을 datepicker로 선언
					$("#datepicker").datepicker();
					$("#datepicker2").datepicker();

					//From의 초기값을 오늘 날짜로 설정
					$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
					//To의 초기값을 내일로 설정
					$('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
				});
			</script> -->
		</div> 
		
		<label>등록정보</label> 
		<input type="text" name="regi_info_man" />
		<input type="text" name="regi_info_date" />
		
		<label>변경정보</label> 
		<input type="text" name="modi_info_man" /><br />
		<input type="text" name="modi_info_date" /><br />
	
	</form>
	
	
	<div>
		<a href="/board/modify?busi_num=${view.busi_num}">거래처 수정</a>, <a href="/board/delete?busi_num=${view.busi_num}">거래처 삭제</a>
	</div>

</body>
</html>