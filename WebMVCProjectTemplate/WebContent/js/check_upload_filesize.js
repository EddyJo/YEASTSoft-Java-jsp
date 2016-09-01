submitButton = document.getElementById("i_submit");
if(submitButton != null) {
	submitButton.onclick = function(event) {
		var file = document.getElementById("i_file").files[0];
		if(file != null) {
			var fileSize = file.size;
			if(fileSize>10485760*2){
		        alert(fileSize +" Bytes\n업로드 파일의 크기(10MB)를 넘어섭니다.");
		        return false; //form submit cancel
		    }else{
		        //alert(fileSize +" Bytes\n업로드 할 수 있습니다.!");
		    	//nothing
		    }
		}
	}
};
