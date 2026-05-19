<%-- 
    Document   : updateSubject
    Created on : May 19, 2026, 3:20:56 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Subject</title>
        <script>
            window.onload = function() {
                // Get ID from URL parameter
                const urlParams = new URLSearchParams(window.location.search);
                const id = urlParams.get('id');

                console.log("Id from URL:", id);

                if (!id) {
                    showError('No subject ID provided');
                    return;
                }

                // Fetch all subjects and find the one with matching ID
                const contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf('/', 1));
                const url = contextPath + '/SubjectServlet';
                
                console.log("Fetching from URL:", url);
                
                fetch(url)
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('HTTP error ' + response.status);
                        }
                        return response.json();
                    })
                    .then(subjects => {
                        console.log("All subjects:", subjects);
                        // Use == for comparison (id from URL is string, subject.id might be number)
                        const subject = subjects.find(s => s.id == id);

                        if (subject) {
                            document.getElementById('id').value = subject.id || '';
                            document.getElementById('matricNo').value = subject.matric_no || '';
                            document.getElementById('subjectName').value = subject.subject_name || '';
                            document.getElementById('subjectCode').value = subject.subject_code || '';
                            clearError();
                        } else {
                            showError('Subject not found with ID: ' + id);
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        showError('Failed to load subject data: ' + error.message);
                    });
            };
            
            function showError(message) {
                let errorDiv = document.getElementById('errorMsg');
                if (!errorDiv) {
                    // Create error div if it doesn't exist
                    errorDiv = document.createElement('div');
                    errorDiv.id = 'errorMsg';
                    errorDiv.className = 'error-message';
                    const form = document.querySelector('form');
                    form.parentNode.insertBefore(errorDiv, form);
                }
                errorDiv.innerText = message;
                errorDiv.style.display = 'block';
            }
            
            function clearError() {
                const errorDiv = document.getElementById('errorMsg');
                if (errorDiv) {
                    errorDiv.style.display = 'none';
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <h2>Update Subject Information</h2>

            <form action="${pageContext.request.contextPath}/SubjectServlet?action=update" method="POST">
                <div class="form-group">
                    <label>ID:</label>
                    <input type="text" id="id" name="id" readonly>
                </div>

                <div class="form-group">
                    <label>Matric No:</label>
                    <input type="text" id="matricNo" name="matricNo" readonly>
                </div>

                <div class="form-group">
                    <label>Subject Name:</label>
                    <input type="text" id="subjectName" name="subjectName" required>
                </div>

                <div class="form-group">
                    <label>Subject Code:</label>
                    <input type="text" id="subjectCode" name="subjectCode" required>
                </div>

                <div class="form-group">
                    <input type="submit" value="Update Subject"/>
                    <button type="button" class="cancel-btn" onclick="window.location.href='viewSubject.jsp'">Cancel</button>
                </div>
            </form>
        </div>
    </body>
</html>