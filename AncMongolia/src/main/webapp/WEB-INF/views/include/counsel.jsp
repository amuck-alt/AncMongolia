<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<form role="form" name="counsel" id="counsel" method="post" data-toggle="validator">

<div class="container-fluid py-5" style="background:url('/img/counsel-img-bg.jpg') no-repeat top;">
	<div class="row sm-row">
		<div class="col-12">
			<div class="col-12 mb-1 font-30 font-white mobile-100-percent"><strong>Online Зөвлөгөө авах хүсэлт</strong></div>
			<div class="col-12 py-2 mobile-100-percent font-20 font-pink">ANC-д ажиллах мөрөөдлөө биелүүлээрэй!</div>
			<div class="col-12 py-2 line-2-white"></div>
		</div>
		<div class="col-12 my-5">	
			<div class="col-12 py-2" id="mobile-100-percent">
				<div class="card">
					<div class="card-body">
						<div class="col-md-12 mt-3 form-group">
                    		<label class="font-bold font-18">Зөвлөгөө өгөх талбар</label>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Domestic" id="ko" class="custom-control-input">
								<label for="ko" class="custom-control-label">Дотоодын агаарын тээврийн онгоцны үйлчлэгч</label>
					  		</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Overseas" id="os" class="custom-control-input">
								<label for="os" class="custom-control-label">Гадаадын агаарын тээврийн онгоцны үйлчлэгч</label>
							</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Personal lesson" id="steward" class="custom-control-input">
								<label for="steward" class="custom-control-label">Нисэх онгоцны буудлын газрын ажилтнууд</label>
							</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Ground" id="ground" class="custom-control-input">
								<label for="ground" class="custom-control-label">Онгоцны үйлчлэгчийн хувийн хичээл</label>
							</div>
							<div class="my-1 custom-control custom-checkbox">	
								<input type="checkbox" name="bt_hopse" value="Steward" id="tour" class="custom-control-input">
								<label for="tour" class="custom-control-label">Эрэгтэй онгоцны үйлчлэгч</label>
							</div>						  
		            	</div>
					</div>
					<div class="card-body">
						<div class="input-group-append font-18">
							<div class="col-md-6" id="mobile-100-percent">
								<label for="bt_name" class="font-bold">Нэр</label>
								<input type="text" class="form-control" name="bt_name" id="bt_name" placeholder="Нэр" required>
								<div class="help-block with-errors text-danger"></div>
							</div>
							<div class="col-md-6" id="mobile-100-percent">
								<label for="bt_name" class="font-bold">Утасны дугаар</label>
								<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="bt_mobile" id="bt_mobile" maxlength="15" placeholder="Утасны дугаар" required>
								<div class="help-block with-errors text-danger"></div>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="col-md-12">
							<button class="btn btn-primary btn-lg btn-block" id="reqcs" type="button">Зөвлөгөө авах хүсэлт</button>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</div>
</div>

</form>

<script>
	
	$("#reqcs").click(function(){
		
		var radioVal = $('input[name="bt_hopse"]:checked').val();		
		
		if($("#bt_name").val() == ""){
			alert("Нэрээ оруулна уу.");
			return false;
		}
		if($("#bt_mobile").val() == ""){
			alert("Утасны дугаараа оруулна уу..");
			return false;
		}
		
		$("#reqcs").attr("disabled", true);
		
		var obj = {
				"gubun" : "Утасны дугаар",
				"stat" : "New",
				"name" : $("#bt_name").val(),
				"phone" : $("#bt_mobile").val(),
				"age" : $("#bt_age").val(),
				"hopse" : radioVal,
				"domain" : "<%=request.getServerName()%>",
				"regip" : "<%=request.getRemoteAddr()%>",
		}
		
		$.ajax({
		    url: "/quick/counsel.do",
		    type: "post",
		    data: JSON.stringify(obj),
		    contentType: "application/json",
		    success: function(data) {
		        alert("Таны зөвлөгөө авах хүсэлтийг бөглөсөн..");
		        window.location.reload();
		    },
		    error: function(errorThrown) {
		        alert(errorThrown.statusText);
		    }
		});
	});
	
</script>

