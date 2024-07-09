# 프로젝트 개요
▷ 프로젝트 주제 : 주문 & 배달 전문 사이트 (FLEX DELIVERY)

▷ 프로젝트 기간 : 2021-01-11 ~ 2021-02-19

▷ 인 원 수: 5명

▷ 기술 및 환경 : 
* **OS**: Window 10
* **Server**: Tomcat 9.0
* **DBMS**: Oracle 11g
* **Language**:   
  **Front-End** : HTML5, CSS3, JavaScript, JQuery, Ajax  
  **Back-End** : Java, Servlet, JSP, Spring, MyBatis  
  **Tools**: STS, Toad, eXERD, Git  
  **etc**: BootStrap, ckEditor, datePicker, reCAPTCHA, Bcrypt, JAMES, 도로명주소 api, KAKAO Map api, c3, POI, AOS, ,IamPort  
 

# 담당 업무 
▷ 담당 영역 : 회원(소비자)/사장님/관리자 중 **[사장님]**  관련 PL 역할 수행 및 기능 구현    

▷ 이용 API 및 기술 :   

       - C3 차트 :  점포 매출액 관련 차트 추가 (매출액, 주문수, 인기 메뉴 등)  
       - IamPort  : 광고 결제 시 이용  
       - datePicker : 날짜 검색 (주문 내역, 광고 내역 등)  
       - reCAPTCHA : 회원 가입 시 보안 강화  
       - 도로명주소 api : 주소 검색 시 도로명 검색 및 표시  
       - Bcrypt : 회원가입 시 비밀번호 암호화  
  
▷ 담당 기능 : 

       - 메인 페이지
         1. 회원(소비자)/사장님/관리자에 따른 서로 다른 웹 페이지 구현
         2. 관리자 승인 여부에 따른 웹 페이지 기능 변경
         3. 매출액, 주문수, 인기메뉴 등 직관적인 표현을 위한 C3.js 차트 이용
      - 회원 가입
         1. reCAPTCHA를 이용한 보안 강화
         2. Bcrypt를 이용한 비밀번호 암호화
      - 마이페이지
         1. 관리자 승인 여부에 따른 기능 변경
         2. 도로명 주소 API를 이용한 주소 검색
       - 광고
         1. 광고 신청 시 IamPort 를 이용한 결제
       - 주문
         1. 실시간 주문 접수
         2. oracle Job을 이용한 배달 여부 자동 update 
         3. 주문 내역의 직관적인 표현을 위한 C3.js 차트 이용
       - 메뉴
         1. AJAX를 이용한 메뉴 옵션 선택

▷ 그 외 업무 : DB 모델링, DB 테이블 정의서 작성, 테스트 데이터 작성, PPT 작성  

# DB 모델링
 ![image](https://github.com/JianBBB/FinalProject/assets/76256461/639d5e9c-3d44-40bb-8d42-e2d616477da2)

# 구현 기능 상세
  
**사장님 메인 페이지**
![image](https://github.com/JianBBB/FinalProject/assets/76256461/3cf6e6c7-914d-4e74-8022-106df1c4920e)
  
**사장님 회원 가입**
![image](https://github.com/JianBBB/FinalProject/assets/76256461/de4edb6d-80c1-4bcb-afa9-96fdc65e653d)
  
**사장님 마이 페이지**
![image](https://github.com/JianBBB/FinalProject/assets/76256461/a7193dae-c6c7-4975-acc9-1f4a201d9aa8)
  
**점포 관리 메인 페이지** 
![image](https://github.com/JianBBB/FinalProject/assets/76256461/533b96f6-59c0-4cd3-83f2-1bf1a8428418)
  
**주문 페이지** 
![image](https://github.com/JianBBB/FinalProject/assets/76256461/7c698583-b4e8-415c-a0cc-3f6c4397470c)
  
**주문 내역 페이지**
![image](https://github.com/JianBBB/FinalProject/assets/76256461/ce996481-c45f-4394-adff-11aaa97febd4)
  
**메뉴 등록 페이지**
![image](https://github.com/JianBBB/FinalProject/assets/76256461/ed151488-5dd6-43ac-a94b-23821ec7b8a0)
  
**오늘 뭐 먹지?** 
![image](https://github.com/JianBBB/FinalProject/assets/76256461/ddfe9e19-1d65-4357-9613-f2b255f984c9)

**광고 페이지** 
![image](https://github.com/JianBBB/FinalProject/assets/76256461/a86fe7b0-32e0-4ea5-8ea1-a5179a35bb1f)


감사합니다.
