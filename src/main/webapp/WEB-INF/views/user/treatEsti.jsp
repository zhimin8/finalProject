<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	.top{
		border:thick dotted green;
		width:100%;
		height:80px;
	}
	.detail{
		border:thick dotted black;
		width:100%;
		height:auto;
	}
	.img{
		border:thick dotted blue;
		width:100%;
		height:220px;
		text-align:center;
		font:gray;
	}
	.selectPet{
		border:thick dotted gray;
		width:100%;
		height:80px;
	}
	.locate{
		border:thick dotted pink;
	}
	.submitBtn{
		text-align:center;
	}
</style>
</head>
<body>

	<div class="top">
		<button>X</button>
		<p style="text-align: center;">미용견적요청서</p>
	</div>
	<div class="img">
		<h4>반려동물 사진 추가</h4> <br>
		<h6>반려동물 사진을 등록하면 <br>
		파트너의 자세한 견적을 받아볼 수 있습니다 </h6> <br>
		<button>+ 사진추가하기</button>
		
	</div>
	<div class="selectPet">
		<button>+</button>반려동물 정보를 선택해 주세요
	</div>
	<div class="locate">
		서로 다른 시/군/구를 설정하면 더 많은 견적서를 받아볼 수 있습니다<br>
		<input type="text" placeholder="첫 번째 위치를 설정하세요"> <br>
		<input type="text" placeholder="두 번째 위치를 설정하세요">
	</div>
	<div class="detail">
		애견미용옵션<br>
		<input type="checkbox">목욕/부분미용<br>
		<input type="checkbox">전신클리퍼<br>
		<input type="checkbox">스포팅<br>
		<input type="checkbox">가위컷<br>
		<input type="checkbox">기타<br>
		* 미용은 예약제로 운영됩니다
		* 금액은 가입시 입력하신 반려동물의 몸무게로 측정되오니 다시 한 번 확인 바랍니다
		* 특수견(비숑,베를링턴 등)은 별도 문의가 필요합니다
		추가요청사항<br>
		<input type="text" placeholder="추가요청사항을 입력하세요"> <br>
		<br>
	</div>
	<div class="submitBtn">
		<button type="submit">요청 완료</button>
	</div>

</body>
</html>