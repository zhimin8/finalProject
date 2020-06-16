<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
</head>
<body>
<div class="wrapper">
    <h3>사용자 회원가입</h3> <br>
    <form action="<%=request.getContextPath()%>/member/joinimple.do" method="post" enctype="multipart/form-data" onsubmit="return validate();">
        <!-- 아이디 -->
        <div class="form-group">
            <label for="memberId">아이디</label>
            <input type="text" class="form-control" id="memberId" name="memberId" placeholder="ID" required>
            <div class="check_font" id="id_check"></div>
            <button type="button" onclick="idCheck()">아이디 중복확인</button> <span id="idCheckMsg"></span><br>
        </div>
        <!-- 비밀번호 -->
        <div class="form-group">
            <label for="memberPw">비밀번호</label>
            <input type="password" class="form-control" id="memberPw" name="memberPw" placeholder="PASSWORD" required>
            <div class="check_font" id="pw_check"></div>
        </div>
        <!-- 비밀번호 재확인 -->
        <div class="form-group">
            <label for="memberPw2">비밀번호 확인</label>
            <input type="password" class="form-control" id="memberPw2" name="memberPw2" placeholder="Confirm Password" required>
            <div class="check_font" id="pw2_check"></div>
        </div>
        <!-- 이름 -->
        <div class="form-group">
            <label for="memberName">이름</label>
            <input type="text" class="form-control" id="memberName" name="memberName" placeholder="Name" required>
            <div class="check_font" id="name_check"></div>
        </div>
        <!-- 생년월일 -->
        <div class="form-group required">
            <label for="memberBirthDate">생년월일</label>
            <input type="text" class="form-control" id="memberBirthDate" name="memberBirthDate" placeholder="ex) 19990415" required>
            <div class="check_font" id="birth_check"></div>
        </div>
        <!-- 본인확인 이메일 -->
        <div class="form-group">
            <label for="memberEmail">이메일</label>
            <input type="text" class="form-control" name="memberEmail" id="memberEmail" placeholder="E-mail" required>
            <div class="check_font" id="email_check"></div>
        </div>
        <!-- 휴대전화 -->
        <div class="form-group">
            <label for="memberPhone">휴대전화 ('-' 없이 번호만 입력해주세요)</label>
            <input type="text" class="form-control" id="memberPhone" name="memberPhone" placeholder="Phone Number" required>
            <div class="check_font" id="phone_check"></div>
</div>
        <!-- 우편번호 -->
        <div class="form-group">
            <label for="memberZipcode">우편번호</label>
            <input type="text" class="form-control" id="memberZipcode" name="memberZipcode" placeholder="우편번호" required>
            <div class="check_font" id="zipcode_check"></div>
        </div>
        <!-- 주소 -->
        <div class="form-group">
            <label for="memberAddress1">주소</label>
            <input type="text" class="form-control" id="memberAddress1" name="memberAddress1" placeholder="도/시/군" required>
            <div class="check_font" id="address1_check"></div>
        </div>
        <!-- 상세주소 -->
        <div class="form-group">
            <label for="memberAddress2">상세주소</label>
            <input type="text" class="form-control" id="memberAddress2" name="memberAddress2" placeholder="상세주소" required>
            <div class="check_font" id="address2_check"></div>
        </div>


        <div class="reg_button">
            <a class="btn btn-danger px-3" href="${pageContext.request.contextPath}">
                <i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
            </a>&emsp;&emsp;
            <button type="onsubmit" class="btn btn-primary px-3" id="reg_submit">
                <i class="fa fa-heart pr-2" aria-hidden="true"></i>가입하기
            </button>
        </div>

        주소 : <input type="text" name="memberAddress1"/><br>
        상세주소 : <input type="text" name="memberAddress2"/><br>

<%--        반려동물 이름 : <input type="text" name="pet_name"> <br>
        반려동물 등록번호 : <input type="text" name="pet_id"> <br>
        <!-- 회원가입 페이지에서 pet-info 에 대해서 선택적으로 받는다면 굳이 몸무게를 받아야하는건가?-->
        반려동물 몸무게 : <input type="text" name ="pet_weight"> <br>--%>

    </form>

    <script src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>

    <script type="text/javascript">
        var ajaxFlag = false;

        function validate() {
            var pass = document.getElementById('memberPw');
            var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
            function chk(re, e, msg) {
                if(re.test(e.value)) {
                    return true;
                }else{
                    alert(msg);
                    e.value = "";
                    e.focus();
                    //기본 이벤트 취소
                    return false;
                }
            }
            if(!ajaxFlag){
                alert("아이디 중복검사를 해주세요");
                return false;
            }

            // 비밀번호 검사
            // 암호는 영문자와 숫자로 8글자이상  기호문자 한개이상 8글자 이상
            if(!chk(regExpPw, pass,'비밀번호 숫자,영어,특수문자가 하나 이상 포함, 8글자 이상 50글자 이하')){
                return false;
            }
            return true;
        }

        function idCheck(){
            $.ajax(
                {
                    url:'<%=request.getContextPath()%>/user/idcheck.do',
                    type : 'get',
                    data : $('#memberId').serialize(),
                    //data : jacksonTest,
                    success : function(data) {
                        console.dir(data);
                        if (data != '') {
                            document.querySelector('#idCheckMsg').textContent = data + '는 이미 존재하는 아이디 입니다.';
                        } else {
                            document.querySelector('#idCheckMsg').textContent = '';
                            document.querySelector('#idCheckMsg').textContent = '사용 가능한 아이디 입니다.';
                            ajaxFlag = true;
                            console.dir(ajaxFlag);
                        }
                    }
                })
        }
    </script>
</div>
</body>
</html>