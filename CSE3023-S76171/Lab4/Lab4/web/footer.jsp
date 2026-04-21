<%-- 
    Document   : footer
    Created on : Apr 21, 2026, 3:28:23 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Footer Styles */
            .footer {
                background-color: #2c3e50;
                color: white;
                padding: 30px 0 20px;
                margin-top: auto;
            }

            .footer-container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 0 20px;
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                gap: 30px;
            }

            .footer-section {
                flex: 1;
                min-width: 200px;
            }

            .footer-section h3 {
                font-size: 18px;
                margin-bottom: 15px;
                position: relative;
                padding-bottom: 8px;
            }

            .footer-section h3::after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 40px;
                height: 2px;
                background-color: #4CAF50;
            }

            .footer-section p {
                font-size: 14px;
                line-height: 1.6;
                color: #ccc;
            }

            .footer-section a {
                color: #ccc;
                text-decoration: none;
                display: block;
                margin-bottom: 8px;
                font-size: 14px;
                transition: color 0.3s ease;
            }

            .footer-section a:hover {
                color: #4CAF50;
            }

            .copyright {
                text-align: center;
                padding-top: 20px;
                margin-top: 20px;
                border-top: 1px solid #444;
                font-size: 12px;
                color: #888;
            }
        </style>
    </head>
    <body>
        <div class="footer">
            <div class="footer-container">
                <div class="footer-section">
                    <h3>About BMI</h3>
                    <p>Body Mass Index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.</p>
                </div>

                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <a href="bmiCalculator.jsp">BMI Calculator</a>
                    <a href="bmiResult.jsp">BMI Result</a>
                    <a href="health.jsp">Health Information</a>
                </div>

                <div class="footer-section">
                    <h3>Contact Info</h3>
                    <p>Email: junelim1212@gmail.com</p>
                    <p>Phone: +6013 923 1820</p>
                    <p>© 2026 BMI Calculator</p>
                </div>
            </div>
            <div class="copyright">
                <p>This information is for educational purposes only. Consult a healthcare provider for medical advice.</p>
            </div>
        </div>      
    </body>
</html>
