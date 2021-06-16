$(document).ready(function(){
    $("input[type='range']").on("change", function() {
        $(".spinner-border").show();
        $('.row').html('');
        var priceRange = $(this).val();
        $.ajax({
            type: 'POST'
            , url : 'assets/db/database.cfc?method=filterPriceRangeFunction'
            , data : {
                'priceRange': priceRange
            }
            , success : function(result) {
                var res = JSON.parse(result);
                var data = '<div class="row">';
                for(i=0; i<res.DATA.length; i++) {
                    data += `<div class="col-sm-3 contentBox text-center" id="${res.DATA[i][0]}">
                                ${res.DATA[i][1]} <br />
                                ${res.DATA[i][2]}
                            </div>`
                }
                data += `</div>`;
                $(".spinner-border").hide();
                $('.container').append(data);
            }
        });
    });
});