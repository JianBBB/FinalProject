<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../adminInc/top.jsp" %>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<script>
$(function(){
	var curNo=${vo.boardNo};
	//alert(curNo);
	
	$('#detailEdit').click(function(){
		location.href="${pageContext.request.contextPath}/admin/menu3/notice/edit.do?no="+${vo.boardNo};
	});
	
	
	$('#detailList').click(function(){
		location.href="${pageContext.request.contextPath}/admin/menu3/notice.do";
	});
});

function prevArticle(){
	var curNo=${vo.boardNo};
	var head=${vo.boardHead};
	location.href="<c:url value='/admin/menu3/notice/detail.do?no="+prevNo+"' />";
}
function nextArticle(){
	var curNo=${vo.boardNo};
	var head=${vo.boardHead};
	location.href="<c:url value='/admin/menu3/notice/detail.do?no="+nextNo+"' />";
}
</script>

<div class="container">
	<div class="row">
	    <div class="col-12">
           <div class="card">

				<div class="card-content"> 
		           <div class="card-body">
						<div class="main-content container-fluid">
			                <div class="col-12">
			                    <div class="single-blog-area blog-style-2 mb-50">
		                       <!-- ##### Post Content Area ##### -->
					                <div class="col-12">
					                    <!-- Single Blog Area  -->
					                    <div class="single-blog-area blog-style-2 mb-50">
					                        <!-- Blog Content -->
					                        <div class="single-blog-content">
					                            <div class="line"></div>
					                            <a class="post-tag">${vo.authorityName } :: ${vo.boardNo }??????  ${vo.boardHead }</a>
					                            <h4><a class="post-headline mb-0">${vo.boardTitle }</a></h4>
					                            <div class="post-meta">
					                                <p>${vo.boardRegdate },   By <a>????????? ????????????</a></p>
					                                <hr>
					                                <div style="display: flex; ">
					                                	<div class="col-6" style="text-align: left;">
					                                		<button type="button" class="btn round block btn-dark" id="detailEdit">??????</button>
															<button type="button" class="btn round block btn-danger" id="modalDeleteBt" data-toggle="modal" 
																data-backdrop="false" data-target="#noticeDetailDelete" >??????</button>
														</div>
					                                	<div class="col-6" style="text-align: right;">
					                                		<!-- <button type="button" class="btn round block" style="border: none; background-color: white; color: black; padding: inherit;" 
					                                			id="nextArticleBt" onclick="nextArticle()" onfocus="this.blur()">?????????????</button>
					                                		<button type="button" class="btn round block" style="border: none; background-color: white; color: black; padding: inherit;" 
					                                			id="prevArticleBt" onclick="prevArticle()" onfocus="this.blur()">?????????????</button> -->
															<button type="button" class="btn round block btn-dark" id="detailList">??????</button>
														</div>
					                                </div>
					                                <hr>
					                            </div>
					                            <div class="text-center">
					                            	<img src="${pageContext.request.contextPath}/resources/imgs/NoticeEventImages/noticeDefault.jpg">
					                            	<br><br><br>
						                            <p>${vo.boardContent }</p>
					                            </div>
											</div>
					                    </div>
					
					                    <!-- About Author -->
					                    <div class="blog-post-author mt-100 d-flex">
					                        <div class="author-thumbnail">
					                            <img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdMemberLineTp.png" alt="?????????????????????"
					                            	>
					                        </div>
					                        <div class="author-info">
					                            <div class="line"></div>
					                            <span class="author-role">Author</span>
					                            <h4><a class="author-name">????????? ????????????</a></h4>
					                            <p><span>???????????? ????????? ?????????????????? ?????? ????????? ?????????????????????.</span></p>
					                       </div>	
					                    </div>
										<div class="text-center" style="text-center">
											
											<!-- #noticeDetailDelete ?????? ?????? -->
	                                       <div class="modal fade text-left" id="noticeDetailDelete" tabindex="-1" role="dialog"
	                                          aria-labelledby="??????????????????" aria-hidden="true">
	                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
	                                             <div class="modal-content">
	                                                <form name="frmEventDel" id="frmEventDel" method="post" action="<c:url value='/admin/menu3/notice/delete.do?no=${vo.boardNo }' />">
	                                                   <div class="modal-header bg-danger">
	                                                      <h5 class="modal-title white" id="myModalLabel140">???????????? ??????</h5>
	                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                                          <i data-feather="x"></i>
	                                                      </button>
	                                                   </div>
	                                                   <div class="modal-body">
	                                                      <input type="hidden" name="boardNo" value="${vo.boardNo }">
	                                                      <input type="hidden" name="boardTitle" value="${vo.boardTitle }">
	                                                      	[<span style="font-weight: bolder;">${vo.boardNo}??? ?????????: ${vo.boardTitle }</span>] ??? ?????????????????????????
	                                                   </div>
	                                                   <div class="modal-footer">
	                                                      <button type="button" class="btn btn-light-secondary" data-dismiss="modal" id="modalDelCancel">
	                                                         <i class="bx bx-x d-block d-sm-none"></i>
	                                                         <span class="d-none d-sm-block">??????</span>
	                                                      </button>
	                                                      
	                                                      <button type="button" class="btn btn-danger ml-1" data-dismiss="modal" id="modalDel" onclick="form.submit()">
	                                                         <i class="bx bx-check d-block d-sm-none"></i>
	                                                         <span class="d-none d-sm-block">??????</span>
	                                                      </button>
	                                                   </div>
	                                                </form>
	                                             </div>
	                                          </div>
	                                       </div> <!-- #honeytipDetailDelete ?????? ?????? end-->
	                                       
										</div>    
					                </div><!-- col-12 -->
				                </div>
				            </div>
				        </div>
    				</div>
   				</div>
	    		
		    </div><!-- card -->
	    </div>
    </div>
</div>

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>  
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->

    
<%@ include file="../../../adminInc/bottom.jsp" %>
