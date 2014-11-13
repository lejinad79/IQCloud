$(document).ready(function() {
    $('#apiaries').dataTable();
    function latitude()
    {
        var latitude = parseFloat($(".gllpLatitude").val());
        $("#apiary_latitude").val(latitude);
    }
    $(".col-md-4	").on("mousemove", ".gllpLatitude", latitude);
    function longitude()
    {
        var longitude = parseFloat($(".gllpLongitude").val());
        $("#apiary_longitude").val(longitude);
    }
    $(".col-md-4	").on("mousemove", ".gllpLongitude", longitude);
} );

