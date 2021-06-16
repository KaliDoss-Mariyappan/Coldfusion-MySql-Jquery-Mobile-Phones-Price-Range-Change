<!DOCTYPE html>
<html>
    <head>
        <title>Jquery Tax Calculator</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="assets/css/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <cfoutput>
            <div class="container mt-5">
                <div class="spinner-border text-primary" id="displayNone"></div>
                <input type="range" min="1" max="50000" value="2000" step="5000">
                <cfset priceQuery = application.priceObject.selectPriceRangeFunction()>
                <div class="row">
                    <cfloop query="priceQuery">
                        <div class="col-sm-3 contentBox text-center" id="#priceQuery.productId#">
                            #priceQuery.productName# <br/>
                            #priceQuery.price#
                        </div>
                    </cfloop>
                </div>
            </div>
        </cfoutput>
        <script src="assets/js/priceRange.js"></script>
    </body>
</html>
