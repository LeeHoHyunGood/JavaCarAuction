var selTwo = new Array(new Array("##선택##"), new Array("i30","i40", "갤로퍼", "그랜져", "그레이스", "다이너스티", "라비타", "리베로", "마이티", "마르샤", "맥스크루즈", "베르나"
		, "벨로스터", "베라크루즈", "스타렉스", "쏘나타", "쏠라티", "싼타페", "싼타모", "아반떼", "아슬란", "아토스", "에쿠스", "엑센트", "제네시스", "제네시스 쿠페", "카운티", "클릭", "티뷰론"
		, "테라칸", "투싼", "투스카니", "트라제XG", "포터", "트럭", "아이오닉", "코나"),
		 new Array("제네시스(G)", "제네시스(EQ)"), 
		 new Array("K5", "K3", "K7", "K9", "로체", "리오", "레이", "레토나", "모닝", "모하비", "봉고", "비스토", "스포티지", "스펙트라", "쏘렌토", "쏘울", "슈마", "쎄라토"
				 , "오피러스", "옵티마", "엔터프라이즈", "엘란", "카니발", "카렌스", "카스타", "크레도스", "콤비", "타우너", "포르테", "프라이드", "프레지오", "x-트랙", "니로"
				 , "스팅어", "스토릭"),
		 new Array("누비라", "다마스", "라노스", "라보", "라세티", "레간자", "레조", "마티즈", "매그너스", "말리부", "베리타스", "스테이츠맨", "스파크", "아베오", "아카디아", "알페온"
				 , "임팔라", "올란도", "윈스톰", "젠트라", "카마로", "칼로스", "크루즈", "콜벳", "캡티바", "토스카", "트랙스", "G2X"), 
		 new Array("SM3", "SM5", "SM6", "SM7", "QM3", "QM5", "QM6"), 
		 new Array("무쏘", "로디우스", "렉스턴", "액티언", "이스타나", "카이런", "코란도","체어맨","티볼리","기타"),
		 new Array(""), new Array("1시리즈", "2시리즈", "3시리즈", "4시리즈", "5시리즈", "6시리즈", "7시리즈", "8시리즈", "그란투리스모", "M1", "M3", "M5", "M6", "X1"
				 , "X3", "X4", "X5", "X6", "X5 M", "X6 M", "Z시리즈", "BMW i3", "BMW i8"),
		 new Array("A클래스", "B클래스", "C클래스", "E클래스", "S클래스", "스마트", "G클래스", "M클래스", "R클래스", "GL클래스", "GLK클래스", "GLA클래스", "GLC클래스", "GLE클래스"
				 , "CL클래스", "CLK클래스", "CLA클래스", "CLS클래스", "SL클래스", "SLK클래스", "SLS AMG", "AMG GT", "SLR", "비아노", "마이바흐", "스프린터"),
		 new Array("A1", "A3", "A4", "A5", "A6", "A7", "A8", "Q3", "Q5", "Q7", "TT", "S 모델", "RS4", "RS5", "RS6", "SQ5", "올로드 콰트로", "R8"),
		 new Array("페이톤", "시로코", "투아렉", "티구안", "CC", "파사트", "비틀", "보라", "이오스", "업", "제타", "폴로", "골프"),
		 new Array("911", "박스터", "파나메라", "카이맨", "카이엔", "카레라 GT", "마칸"),
		 new Array(""), new Array("CR-Z", "CR-V", "레젼드", "시빅", "어코드", "오디세이", "인사이트", "파일럿"),
		 new Array("IS", "ES", "GS", "LS", "SC", "RX", "CT"),
		 new Array("GT-R", "350Z", "370Z", "로그", "마치", "무라노", "맥시마", "실비아", "스카이라인", "시마", "알티마", "쥬크", "큐브", "패스파인더", "페어레이디", "휘가로", "기타"),
		 new Array("86", "BB", "FJ 크루저", "MR", "RAV 4", "벤자", "사이언", "소아라", "솔라라", "수프라", "시에나", "세라", "셀리카", "아발론", "윌", "코롤라", "캠리", "엑스트라 캡", "툰드라", "프리우스", "에스티마"),
		 new Array("FTO", "GTO", "RVR", "랜서", "랜서 에볼루션", "아웃랜더", "이클립스", "파제로", "3000GT"), new Array("G", "M", "Q", "FX", "EX", "QX", "기타"),
		 new Array("알토라팡", "기타"), new Array("레거시", "아웃백", "임프레자", "포레스터"), new Array("미라", "코펜"), new Array(""),
		 new Array("200", "300C", "300M", "LHS", "PT 크루저", "그랜드 캐러밴", "그랜드 보이저", "세브링", "크로스파이어", "퍼시피카", "기타"),
		 new Array("F-시리즈", "S-MAX", "머스탱", "몬데오", "올 뉴 포커스", "익스플로러", "이스케이프", "윈드스타", "토러스", "파이브 헌드레드", "퓨전", "프리스타일"),
		 new Array("LS", "MKC", "MKS", "MKT", "MKZ(제퍼)", "MKX", "네비게이터", "마크LT", "에비에이터", "컨티넨탈", "타운카", "기타"),
		 new Array("ATS", "CTS", "DTS", "STS", "BLS", "SRX", "에스컬레이드", "드빌", "기타"),
		 new Array("HHR", "실버라도 픽업", "서버밴", "블레이져", "아발란치", "아스트로밴", "익스플로러밴", "체비밴", "카마로", "콜벳", "타호", "픽업", "기타"),
		 new Array("다코타", "듀란고", "램 밴", "램 픽업", "매그넘", "바이퍼", "차저", "챌린저", "캐러밴", "캘리버"),
		 new Array("H1", "H2", "H2 SUT", "H3", "H3T"), new Array("리버티", "랭글러", "레니게이드", "체로키", "커맨더", "컴패스", "기타"), new Array(""),
		 new Array("C30", "C70", "S40", "S60", "S70", "S80", "V50", "V60", "V40", "V70", "XC60", "XC70", "XC90"),
		 new Array("9-3", "9-5", "SAAB-900", "SAAB-9000", "기타"),
		 new Array(""), new Array("206", "207", "208", "307", "308", "407", "508", "607", "807", "3008", "RCZ", "기타"),
		 new Array("C2", "C3", "C4", "C5", "DS3", "DS4", "DS5", "XM", "잔티아"), new Array(""),
		 new Array("XE", "XF", "XJ", "XK", "F-TYPE", "S-TYPE", "X-TYPE", "F-PACE", "기타"),
		 new Array("쿠퍼", "쿠퍼 D", "쿠퍼 S", "쿠페", "쿠퍼 로드스터", "쿠퍼 컨버터블", "쿠퍼 컨버터블 S", "쿠퍼 클럽맨", "쿠퍼 컨트리맨", "쿠퍼 페이스맨"),
		 new Array("레인지로버", "프리랜더", "디스커버리"), new Array("뮬산", "브룩랜즈", "아르나지", "아주르", "에이트", "컨티넨탈"), new Array("미니"), new Array(""),
		 new Array("500", "500C", "멀티피아", "바르게타", "쿠페", "크로마"), new Array("DB7", "DB9", "VS 밴티지", "V12 밴티지", "DBS", "래피드", "뱅퀴시", "뱅퀴시 S", "기타"),
		 new Array("가야르도", "디아블로", "아벤타도르", "무르시엘라고", "레벤톤"), new Array("3200 GT", "그란스포츠", "그란카브리오", "그란투리스모", "스파이더", "콰트로포르테", "기블리", "쿠페"),
		 new Array("360", "458", "599", "575M", "612", "F355", "F430", "FF", "캘리포니아", "엔초", "기타"), new Array(""));

function doChange(srcE, targetId, selId){
    var val = srcE.options[srcE.selectedIndex].value;
    var text = srcE.options[srcE.selectedIndex].text;
    var item = srcE.options.selectedIndex;
    var targetE = document.getElementById(targetId);
    var selE = document.getElementById(selId).options.length;
    removeAll(targetE);

    if (targetId == 'selTwo') {
    	for (var i = 0; i < selE; i++) {
    		if (val == 1000+item) {
    			for (var j = 0; j < selTwo[item].length; j++) {
    	    		var cselect = selTwo[item][j];
    	    		addOption(cselect, targetE, 2000)
    	    		$("#last_select").val(text);
    	    	}
    			break;
    		}
    	}
}
}

function addOption(value, e, sleValue){
    var o = new Option();
    if (sleValue == 2000) {
    	o.value = 2000 + e.length;
        o.text = value;
        o.selected = true;
    }
    try{
        e.add(o);
    }catch(ee){
        e.add(o, null);
    }
}

function removeAll(e){
    for(var i = 0, limit = e.options.length; i < limit - 1; ++i){
        e.remove(1);
    }
}

$(function() {
	$('#selTwo').change(function() {
		var target = document.getElementById("selTwo");
		var text = target.options[target.selectedIndex].text;
			$("#last_select2").val(text);
	});
});