/*//form to json
$.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            } else {
                o[this.name] = false;
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

$(function(){
	$('#form').validate({
		submithandler: function(form){
			console.log('submit form');
			var data = $('#form').serializeObject();
			post_url = '';
			$.post(post_url, 
		}
	});
});*/

$('#submit_button').click(function(){
	console.log("submit");
	$('#clinic_approve').attr("value", $('#clinic_other_approve').attr("value");
	$('#clinic_update_status').attr("value", $('#clinic_other_update_status').attr("value");
	$('#clinic_other_comment').attr("value", $('#clinic_other_other_comment').attr("value");
	$('#clinic_last_updated').attr("value", $('#clinic__other_last_updated').attr("value");
	$('#clinic_clinic_name').attr("value", $('#clinic_other_clinic_name').attr("value");
	$('#clinic_alternative_name').attr("value", $('#clinic_other_alternative_name').attr("value");
	$('#clinic_lat').attr("value", $('#clinic_other_lat').attr("value");
	$('#clinic_lng').attr("value", $('#clinic_other_lng').attr("value");
	$('#clinic_primary_source').attr("value", $('#clinic_other_primary_source').attr("value");
	$('#clinic_street_addr1').attr("value", $('#clinic_other_street_addr1').attr("value");
	$('#clinic_streer_addr2').attr("value", $('#clinic_other_streer_addr2').attr("value");
	$('#clinic_city').attr("value", $('#clinic_other_city').attr("value");
	$('#clinic_state').attr("value", $('#clinic_other_state').attr("value");
	$('#clinic_zipcode').attr("value", $('#clinic_other_zipcode').attr("value");

	$('#clinic_update_status').attr("value", $('#clinic_other_update_status').attr("value");
	$('#clinic_other_comment').attr("value", $('#clinic_other_other_comment').attr("value");
	$('#clinic_last_updated').attr("value", $('#clinic__other_last_updated').attr("value");
	$('#clinic_clinic_name').attr("value", $('#clinic_other_clinic_name').attr("value");
	$('#clinic_alternative_name').attr("value", $('#clinic_other_alternative_name').attr("value");
	$('#clinic_lat').attr("value", $('#clinic_other_lat').attr("value");
	$('#clinic_lng').attr("value", $('#clinic_other_lng').attr("value");
	$('#clinic_primary_source').attr("value", $('#clinic_other_primary_source').attr("value");
	$('#clinic_street_addr1').attr("value", $('#clinic_other_street_addr1').attr("value");
	$('#clinic_streer_addr2').attr("value", $('#clinic_other_streer_addr2').attr("value");
	$('#clinic_city').attr("value", $('#clinic_other_city').attr("value");
	$('#clinic_state').attr("value", $('#clinic_other_state').attr("value");
});