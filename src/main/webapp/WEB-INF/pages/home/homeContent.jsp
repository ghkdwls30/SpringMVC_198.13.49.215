<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<% pageContext.setAttribute("newLineChar", "\n"); %>
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">작업내역</h4>
            <div class="ml-auto text-right">
            <nav aria-label="breadcrumb">
                <c:if test="${!isAdmin}">
                     <span style="color: white; position: relative; top: 2px">남은 자동 슬롯 : </span><span class="label label-danger">${userDetailTuple.remainAutoSlotCnt}</span> &nbsp;&nbsp; /&nbsp;&nbsp;
                     <span style="color: white; position: relative; top: 2px">남은 연관 슬롯 : </span><span class="label label-danger">${userDetailTuple.remainRelSlotCnt}</span> &nbsp;&nbsp;/&nbsp;&nbsp;
                     <span style="color: white; position: relative; top: 2px">남은 모통 슬롯 : </span><span class="label label-danger">${userDetailTuple.remainMobileSearchSlotCnt}</span>  
                </c:if>
                 <c:if test="${isAdmin}">
                 	<span style="color: white; position: relative; top: 2px">전체 사용자 수 : </span><span class="label label-danger">${allUserCnt}</span> &nbsp;&nbsp; /&nbsp;&nbsp;
                 	<span style="color: white; position: relative; top: 2px">전체 슬롯 수 : </span><span class="label label-danger">${allSlotCnt}</span> &nbsp;&nbsp; /&nbsp;&nbsp;
                 </c:if>
            </nav>
        </div>
        </div>
        
    </div>
</div>

  <div class="container-fluid">
  <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->


				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
                            	<c:if test="${isAdmin}">
									<div class="row">
											<div class="col-sm-6 mb-3 text-left" >
		                            			<h4 class="card-title" style="position: relative;top: 8px;color: white">공지사항 작성</h4>
		                            		</div>
		                            		
		                            		<div class="col-sm-6 mb-3 text-right">
		                            			<button  data-toggle="tooltip" data-placement="top" title="" data-original-title="해당 사이트에서 HTML로 변환 후 아래 공지사항에 입력하세요.(줄바꿈 : 쉬프트+엔터 / 줄공백 : 엔터)"  type="button" class="btn btn-danger" onclick="window.open('https://html-online.com/editor'); return false;">HTML 변환기</button>
		                            			<button type="button" class="btn btn-success" onclick="saveBoard(); return false;">저장</button>
		                            		</div>
									</div>
									<div class="row">
										<textarea class="form-control" id="noti" rows="10"><c:out value="${boardEntity.content}" escapeXml="false" /></textarea>
									</div>
							   	
                            	</c:if>
                            	<c:if test="${!isAdmin}">
									<div class="text-left" >
                            			<h4><span class="badge badge-pill badge-warning"><b>공지사항</b></span></h4>
                            		</div>
									<div style="background-color: white; padding: 5px; border: 3px solid orange;">
										<c:out value="${boardEntity.content}" escapeXml="false" />
									</div>
                            	</c:if>
                            	
							</div>
						
						</div>
					</div>
				</div>
			
			
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
							
<!-- 							<div class="form-group row"> -->
<!--                                     <div class="col-md-12"> -->
<!--                                         <select class="select2 form-control m-t-15" multiple="multiple" style="height: 36px;width: 100%;"> -->
<!--                                                 <option value="AK">Alaska</option> -->
<!--                                                 <option value="HI">Hawaii</option> -->
<!--                                         </select> -->
<!--                                     </div> -->
<!--                                 </div> -->
							
								<div class="row">
					                    
					                    <div class="col-sm-6 mb-3 text-left">
					                    	<button type="button" class="btn btn-secondary" onclick="donwloadExcelForm(); return false;">양식받기</button>
					                    	<button type="button" class="btn btn-secondary" onclick="excelDownload(); return false;">엑셀열기</button>
					                    	<button type="button" class="btn btn-secondary" onclick="excelUpload(); return false;">엑셀저장</button>
					                    	<button type="button" class="btn btn-secondary" onclick="addSlot(); return false;">슬롯추가</button>
					                    	<button type="button" class="btn btn-success" onclick="saveSlot(); return false;">저장</button>
					                    	<button type="button" class="btn btn-danger" onclick="deleteSlot(); return false;">삭제</button>
					                    </div>
					                    
					                    
										<div class="col-sm-2  mb-3">
											<select id="searchType" name="searchType" class="form-control">
												<option value="">분류</option>
												<option value="R" <c:if test="${param.searchType eq 'R'}">selected="selected"</c:if> >연관검색어</option>
												<option value="MS" <c:if test="${param.searchType eq 'MS'}">selected="selected"</c:if>>모바일통합검색</option>
												<option value="A" <c:if test="${param.searchType eq 'A'}">selected="selected"</c:if>>자동완성</option>
											</select>
										</div>
										<div class="col-sm-2  mb-3">
											<select id="searchFilter" name="searchFilter" class="form-control">
												<option value="">필터</option>
												<option value="filter1" <c:if test="${param.searchFilter eq 'filter1'}">selected="selected"</c:if> >슬롯아이디</option>
												<option value="filter2" <c:if test="${param.searchFilter eq 'filter2'}">selected="selected"</c:if> >검색어</option>
												<option value="filter3" <c:if test="${param.searchFilter eq 'filter3'}">selected="selected"</c:if> >노출 검색어</option>
												<c:if test="${isAdmin}">
												<option value="filter4" <c:if test="${param.searchFilter eq 'filter4'}">selected="selected"</c:if> >등록자</option>
												</c:if>
											</select>
										</div>
								
										<div class="col-sm-2  mb-3">
											<div class="input-group">
						                        <input type="text" value="${param.searchKeyword}" onkeyup="searchOnkeyup(event); return false;" class="form-control" id="searchKeyword" placeholder="검색어를 입력하세요." style="position: static !important;">
						                        <div class="input-group-append">
						                            <button type="submit" style="cursor: pointer;"  onclick="searchList(); return false;">
							                            <i class="fas fa-search"></i>
							                        </button>  
						                        </div>
						                    </div>
					                    </div>
					                    
									</div>
									<table class="table" id="slotTabe">
<%-- 										<colgroup> --%>
<%-- 											<col width="5%"> --%>
<%-- 											<col width="10%"> --%>
<%-- 											<col width="10%"> --%>
<%-- 											<col width="10%"> --%>
<%-- 											<col width="15%"> --%>
<%-- 											<col width="15%"> --%>
<%-- 											<col width="10%"> --%>
<%-- 											<col width="10%"> --%>
<%-- 											<col width="10%"> --%>
<%-- 											<col width="10%"> --%>
											
<%-- 										</colgroup> --%>
				                         <thead class="thead-dark">
				                             <tr>
				                                 <th>
				                                     <label class="customcheckbox m-b-20">
				                                         <input type="checkbox" id="mainCheckbox">
				                                         <span class="checkmark"></span>
				                                     </label>
				                                 </th>
<!-- 				                                 <th class="text-center hide" scope="col" >상태</th> -->
												
				                                 <th class="text-center <c:if test="${!isAdmin }">hide</c:if>" scope="col">슬롯번호</th>
				                                 <th class="text-center" scope="col">분류</th>
				                                 <th class="text-center" scope="col">검색어</th>
				                                 <th class="text-center" scope="col">노출 검색어</th>
				                                 <th class="text-center" scope="col">순위</th>
				                                 <c:if test="${isAdmin }">
				                                 <th class="text-center" scope="col">등록자</th>
				                                 </c:if>
				                                 <th class="text-center" scope="col">등록일</th>
				                                 <th class="text-center" scope="col">수정일</th>
				                             </tr>
				                         </thead>
				                         <tbody class="customtable">
				                         	<c:forEach items="${slotEntityList}" var="slotEntity">
					                            <tr data-slotid="${slotEntity.slotId}">
					                                 <th>
					                                     <label class="customcheckbox">
					                                         <input type="checkbox" class="listCheckbox">
					                                         <span class="checkmark" style="top: 7px;"></span>
					                                     </label>
					                                 </th>

					                                 <td class="text-center <c:if test="${!isAdmin }">hide</c:if>"><span class="table-text-item">${slotEntity.slotId }</span></td>
					                                 <td class="text-center" data-type="${slotEntity.type}">
						                             	<select name="type" class="form-control">
												    		<option value="MS" <c:if test="${slotEntity.type eq 'MS'  }">selected="selected" </c:if>>모바일 통합 검색</option>
												    		<option value="A" <c:if test="${slotEntity.type eq 'A'  }">selected="selected" </c:if>>자동완성</option>
												    		<option value="R" <c:if test="${slotEntity.type eq 'R'  }">selected="selected" </c:if>>연관검색어</option>
												    	</select>
					                                 </td>
					                                 <td class="text-center">
					                                 	<input type="text" class="form-control" name="searchKw" placeholder="검색어" value="${slotEntity.searchKw }">
					                                 </td>
					                                 <td class="text-center">
					                                 	<input type="text" class="form-control" name="exposeKw" placeholder="노출 검색어" value="${slotEntity.exposeKw }">
					                                 </td>
					                                 <td class="text-center">
					                                 		<c:choose>
					                                 			<c:when test="${isAdmin}">
					                                 				<input style="width: 50px;display: inline;" type="text" class="form-control" name="ranking" placeholder="" value="${slotEntity.ranking }" maxlength="3">						                                 			
					                                 			</c:when>
					                                 			<c:otherwise>
					                                 				<span class="table-text-item">
						                                 				<c:choose>
						                                 					<c:when test="${empty slotEntity.ranking}">-</c:when>
						                                 					<c:otherwise>${slotEntity.ranking }</c:otherwise>
						                                 				</c:choose>
					                                 				</span>
					                                 			</c:otherwise>
					                                 		</c:choose>
						                                 	
					                                 </td>
					                                 
					                                 
					                               <c:if test="${isAdmin }">
		                                 			<td class="text-center">
		                                 				<select name="account" class="form-control">
		                                 					<c:forEach items="${userEntityList }" var="userEntity">
		                                 						<option value="${userEntity.account}" <c:if test="${userEntity.account eq slotEntity.account  }">selected="selected" </c:if>>${userEntity.account }</option>
		                                 					</c:forEach>
		                                 				</select>
		                                 			</td>
					                               </c:if>
					                                 		
					                                 							                                 			
					                                 <td class="text-center"><span class="table-text-item">${fn:split(slotEntity.createdAt, '.')[0] }</span></td>
					                                 <td class="text-center"><span class="table-text-item">${fn:split(slotEntity.modifiedAt, '.')[0] }</span></td>
					                             </tr>
				                             </c:forEach>
				                               
				                             
				                         </tbody>
				                     </table>
				                     <input type="hidden" id="page" value="1">
				                     <input type="hidden" id="size" value="20">
				                     <jsp:include page="../common/inc_pagenavigation.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
	</div>
	<input type="file" name="file" id="file" onchange="afterFileChange();" style="display: none;"/>
<script>

$(document).ready(function(){
	// 자동 체크 처리
	$("[name='type'], [name='searchKw'], [name='exposeKw'],  [name='ranking'],  [name='rankTot'], [name='account']" ).bind("change input", function(){
		$(this).closest("tr").find(".listCheckbox").prop("checked", true);
	})
	
	$('[data-toggle="tooltip"]').tooltip();
	
})

function afterFileChange(){
	var formData = new FormData();
	formData.append("excelFile", $("#file")[0].files[0]);
	
	$(".preloader").fadeIn();
	
	debugger;
	
	$.ajax({
		url : "/rest/home/uploadExcel",
		data : formData,
		dataType : 'json',
		processData : false,
		contentType : false,
		type : 'POST',
		success : function(data) {
			if( data.result == 'SUCCESS'){
				searchList();
			}else{
				 var Ca = /\+/g;
				alert(decodeURIComponent( data.MSG.replace(Ca, " ") ));
				$("#file").val('');
				$(".preloader").fadeOut();
			}
		},
		error : function (xhr, ajaxOptions, thrownError) {
			toastr.error('서버에러가 발생했습니다. 관리자에게 문의 바랍니다.', '알림');			
		}
		 
	});
}

function excelUpload() {
	 $("#file").click();
}

function searchList(){
	var param = "?";
	param += "searchKeyword=" +  $("#searchKeyword").val();
	param += "&page=" +  $("#page").val();
	param += "&size=" +  $("#size").val();
	param += "&searchType=" +  $("#searchType").val();
	param += "&searchFilter=" +  $("#searchFilter").val();
	location.href = "/home/main" + param;
}

function changePage(page){
	$("#page").val( page)
	searchList();
}


function donwloadExcelForm(){
	var param = "?";
	param += "searchKeyword=" +  $("#searchKeyword").val();
	
	var link = document.createElement("a");
    link.href = "/home/excelForm" + param;
    link.click();
}

function excelDownload(){
	var param = "?";
	param += "searchKeyword=" +  $("#searchKeyword").val();
	
	var link = document.createElement("a");
    link.href = "/home/excelList" + param;
    link.click();
}

//슬롯 추가
function addSlot() {
	
	var isAdmin = '${isAdmin}';
	
	var tag = ""
	tag += '<tr data-slotid="-1">'
    tag += '<th>'
    tag +=     '<label class="customcheckbox">'
    tag +=         '<input type="checkbox" class="listCheckbox" checked="checked">'
    tag +=         '<span class="checkmark" style="top: 7px;"></span>'
    tag +=     '</label>'
    tag += '</th>'
    
    if( isAdmin == 'true'){
    tag += '<td class="text-center"><span class="table-text-item">-</span></td>'
    }
    
        
    tag += '<td class="text-center">'
    tag += 	'<select name="type" class="form-control">'
    tag += 		'<option value="MS">모바일 통합 검색</option>'
    tag += 		'<option value="A">자동완성</option>'
    tag += 		'<option value="R">연관검색어</option>'
    tag += 	'</select>'
    tag += '</td>'
    tag += '<td class="text-center">'
    tag += 	'<input type="text" class="form-control" name="searchKw" placeholder="검색어" value="${slotEntity.searchKw }">'
    tag += '</td>'
    tag += '<td class="text-center">'
    tag += 	'<input type="text" class="form-control" name="exposeKw" placeholder="노출 검색어" value="${slotEntity.exposeKw }">'
    tag += '</td>'
    
    if( isAdmin == 'true'){
    	tag += '<td class="text-center">'
    	tag += '<input style="width: 50px;display: inline;" type="text" class="form-control" name="ranking" placeholder=""  maxlength="3">' 
    	tag += '</td>'
    	tag += '<td class="text-center">'
    	tag += '<select name="account" class="form-control">'
    		<c:forEach items="${userEntityList }" var="userEntity">
    			tag +=  '<option value="${userEntity.account}" <c:if test="${userEntity.account eq currentUser  }">selected="selected" </c:if>>${userEntity.account }</option>'
			</c:forEach>
    	tag += '</select>'
    	tag += '</td>'
    }else{
    	tag += '<td class="text-center"><span class="table-text-item">-</span></td>'
    }
    
    tag += '<td class="text-center"><span class="table-text-item">-</span></td>'
    tag += '<td class="text-center"><span class="table-text-item">-</span></td>'
    tag +='</tr>'
	
		console.log(tag);
	
	
	$("#slotTabe tbody").append(tag);
	
}

//슬롯 저장
function saveSlot() {

	var slots  = getCheckedSlotDataList3();
	
	if (slots.length == 0) {
		toastr.warning('저장/활성화 할 슬롯을 선택하세요', '알림');
		return false;
	}
	
	callAjax("/rest/slots", "PUT",
	// 데이터 
	{
		slotEntityList : slots
	}
	,function(){ // 성공 콜백
		searchList();
	}
	,function(){ // 실패 콜백
		
	});

}


//슬롯 비활성화
function disableSlot() {
	
	var slots  = getCheckedSlotDataList2();
	
	if (slots.length == 0) {
		toastr.warning('비활성화 할 슬롯을 선택하세요', '알림');
		return false;
	}
	
	callAjax("/rest/slots/disable", "PUT",
	// 데이터 
	{
		slotEntityList : slots
	}
	,function(){ // 성공 콜백
		searchList();
	}
	,function(){ // 실패 콜백
		
	});
	
}

//슬롯 삭제
function deleteSlot(){
	
	var slots  = getCheckedSlotDataList();
	
	if (slots.length == 0) {
		toastr.warning('삭제 할 슬롯을 선택하세요', '알림');
		return false;
	}
	
	callAjax("/rest/slots", "DELETE",
	// 데이터 
	{
		slotEntityList : slots
	}
	,function(){ // 성공 콜백
		searchList();
	}
	,function(){ // 실패 콜백
		
	});
	
}


// 체크 박스된 슬롯 가져오기 ( 삭제용)
function getCheckedSlotDataList(){
	
	var slots = [];
	
	$("tbody .customcheckbox input:checked").each(function(){
		
		var slot = {};
		
		var slotId = $(this).closest("tr").data("slotid");
		slot.slotId = slotId + '';
		slot.searchKw =  $(this).closest("tr").find("[name='searchKw']").val();
		slot.exposeKw =  $(this).closest("tr").find("[name='exposeKw']").val();
		if( slotId == -1){
			slot.type =  $(this).closest("tr").find("[name='type']").val();
		}else{
			slot.type =  $(this).closest("tr").find("[data-type]").data("type");
		}
		slot.status =  $(this).closest("tr").find("[data-status]").data("status");
		slot.account =  $(this).closest("tr").find("[data-account]").data("account");
		
		slots.push( slot);
	})
	
	return slots;
}


//체크 박스된 슬롯 가져오기 ( 비활성화용)
function getCheckedSlotDataList2(){
	
	var slots = [];
	
	$("tbody .customcheckbox input:checked").each(function(){
		
		var slot = {};
		
		var slotId = $(this).closest("tr").data("slotid");
		slot.slotId = slotId + '';
		slot.status =  'D';
		
		slots.push( slot);
	})
	
	return slots;
}


//체크 박스된 슬롯 가져오기 ( 저장용)
function getCheckedSlotDataList3(){
	
	var slots = [];
	
	$("tbody .customcheckbox input:checked").each(function(){
		
		var slot = {};
		var isAdmin = '${isAdmin}';
		
		var slotId = $(this).closest("tr").data("slotid");
		slot.slotId = slotId + '';
		slot.searchKw =  $(this).closest("tr").find("[name='searchKw']").val();
		slot.exposeKw =  $(this).closest("tr").find("[name='exposeKw']").val();
		slot.type =  $(this).closest("tr").find("[name='type']").val();
		slot.status =  'A';
		
		if( isAdmin == 'true'){
			slot.account =  $(this).closest("tr").find("[name='account']").val();
		}else{
			slot.account =  $(this).closest("tr").find("[data-account]").data("account");	
		}
		
		
		if( isAdmin == 'true'){
			slot.ranking =  $(this).closest("tr").find("[name='ranking']").val();
			slot.rankTot =  $(this).closest("tr").find("[name='rankTot']").val();
		}
		
		slots.push( slot);
	})
	
	return slots;
}


function searchOnkeyup(e) {
	 var code = e.which; // recommended to use e.which, it's normalized across browsers
	    if(code==13){
	    	searchList();		   
	    }
}

//공지사항 저장

function saveBoard() {
	
	callAjax("/rest/board/1", "PUT",
	{
		seq : 1,
		content : $("#noti").val(),		
	}
	,function(){ // 성공 콜백
		
	}
	,function(){ // 실패 콜백
		toastr.error('서버에러가 발생했습니다. 관리자에게 문의 바랍니다.', '알림');
	});

}



</script>