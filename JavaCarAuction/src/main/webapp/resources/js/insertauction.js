var files = {};
var previewIndex = 0;
var fileSize = 0;
var fsext = new Array('Bytes', 'KB', 'MB', 'GB');
	$(document).ready(function() {
		$('#attach input[type=file]').change(function() {
            addPreview($(this)); //preview form 추가하기
        });
	});
	
//임의의 file object영역
 
        // image preview 기능 구현
        // input = file object[]
        function addPreview(input) {
            if (input[0].files) {
                //파일 선택이 여러개였을 시의 대응
                for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                    var file = input[0].files[fileIndex];
                    
                    fileSize = file.size;
                    var i = 0;
                    while(fileSize>900){
                    	fileSize/=1024;
                    	i++;
                    }
                    fileSize = (Math.round(fileSize*100)/100)+''+fsext[i];
                    if (validation(file.name))
                        continue;
 
                    var reader = new FileReader();
                    reader.onload = function(img) {
                        //div id="preview" 내에 동적코드추가.
                        //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                        var imgNum = previewIndex++;
                        $("#preview")
                                .append(
                                        "<tr class=\"preview-box\" value=\"" + imgNum +"\">"
                                        +"<td>"+file.name+"</td>"
                                        +"<td>"+fileSize+"</td>"
                                        +"<td>"
                                        + "<a href=\"#\" value=\""
                                        + imgNum
                                        + "\" onclick=\"deletePreview(this)\">"
                                        + "삭제" + "</a></td>"
                                        +"</tr>");
                        $("#preview2")
                        		.append(
                        				"<div class=\"carousel-item\" id=\""+imgNum+"\">"
                        				+"<img class=\"d-block w-100\" src=\"" + img.target.result + "\"\/>"
                        				+"</div>"
                        				);
                        files[imgNum] = file;
                    };
                    reader.readAsDataURL(file);
                }
            } else
                alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
        }
 
        //preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제
        function deletePreview(obj) {
            var imgNum = obj.attributes['value'].value;
            delete files[imgNum];
            $("#preview .preview-box[value=" + imgNum + "]").remove();
            $("#preview2 #" + imgNum + "").remove();
            $("#preview2 #main").prop('class', "carousel-item active");
        }
 
        //client-side validation
        //always server-side validation required
        function validation(fileName) {
            fileName = fileName + "";
            var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
            var fileNameExtension = fileName.toLowerCase().substring(
                    fileNameExtensionIndex, fileName.length);
            if (!((fileNameExtension === 'jpg')
                    || (fileNameExtension === 'gif') || (fileNameExtension === 'png'))) {
                alert('jpg, gif, png 확장자만 업로드 가능합니다.');
                return true;
            } else {
                return false;
            }
        }
 
        $(document).ready(function() {
            //submit 등록. 실제로 submit type은 아니다.
            $('#sendMessageButton').on('click',function() {   
            	alert('jpg, g231니다.');
            	
            	var token = $("meta[name='_csrf']").attr("content");
            	var header = $("meta[name='_csrf_header']").attr("content");
            	
                var form = $('#uploadForm')[0];
                var formData = new FormData(form);
                var makel = $('#last_select').val();
                for (var index = 0; index < Object.keys(files).length; index++) {
                    //formData 공간에 files라는 이름으로 파일을 추가한다.
                    //동일명으로 계속 추가할 수 있다.
                    formData.append('files',files[index]);
                }
                //ajax 통신으로 multipart form을 전송한다.
                if (makel == 1000 || makel == null || makel == 'default') {
                	return;
                }
                $.ajax({
                    type : 'POST',
                    enctype : 'multipart/form-data',
                    headers : {header : token},
                    processData : false,
                    contentType : false,
                    cache : false,
                    timeout : 6000000,
                    url : 'insertAuction.do',
                    dataType : 'JSON',
                    data : formData,
                    beforeSend: function(xhr) {
                    	xhr.setRequestHeader(header, token); 
                    	},
                    success : function(result) {
                        //이 부분을 수정해서 다양한 행동을 할 수 있으며,
                        //여기서는 데이터를 전송받았다면 순수하게 OK 만을 보내기로 하였다.
                        //-1 = 잘못된 확장자 업로드, -2 = 용량초과, 그외 = 성공(1)
                        if (result === -1) {
                            alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
                            // 이후 동작 ...
                        } else if (result === -2) {
                            alert('파일이 10MB를 초과하였습니다.');
                            // 이후 동작 ...
                        } else {
                            alert('이미지 업로드 성공2');
                            location.href="index2.do";
                        }
                    }
                    //전송실패에대한 핸들링은 고려하지 않음
                });
                alert(formData+"-7");
            });
            // <input type=file> 태그 기능 구현
            
        });