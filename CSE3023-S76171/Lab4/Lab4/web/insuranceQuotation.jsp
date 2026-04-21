<%-- 
    Document   : insuranceQuotation
    Created on : Apr 21, 2026, 2:30:31 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <div>
            <h1>Insurance Quotation</h1>
        </div>
        
        <div class="container">
            <div class="card">
                <form method="POST" action="processInsuranceQuo.jsp" >
                    <fieldset>
                        <legend>Insurance Calculation</legend>

                        <label for="icno">IC No*</label>
                        <input type="text" name="icno" placeholder="E.g. 821210-05-3478"

                        <label for="name">Name* </label>
                        <input type="text" name="name" placeholder="Enter Name">

                        <label for="price">Market Price*</label>
                        <input type="number" min="0" step="1" class="form-control" name="price">

                        <label for="coverage">Coverage Type </label>
                        <select name="coverage">
                            <option value="comprehensive">Comprehensive</option>
                            <option value="thirdparty" selected>Third Party</option>
                        </select>

                        <label for="ncd">No Claims Discont (NCD) </label>
                        <select name="ncd">
                            <option value="0.10" selected>10%</option>
                            <option value="0.20">20%</option>
                            <option value="0.30">30%</option>
                        </select>

                        <input type="submit" value="Submit">
                        <input type="reset" value="Cancel">
                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>
