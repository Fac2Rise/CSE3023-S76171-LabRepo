/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let subjectList = [];

window.onload = function () {
    const contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf('/', 1));
    const url = contextPath + '/SubjectServlet';
    
    console.log(url);

    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error('HTTP error ' + response.status);
            }
            return response.json();
        })
        .then(data => {
            subjectList = data;
            displayList(subjectList);
        })
        .catch(error => {
            console.error('Error fetching complaints:', error);
            document.getElementById('subjectTableBody').innerHTML = 
                '<tr><td colspan="4" style="text-align:center; color: red;">Error loading complaints</td></tr>';
        });
};

function displayList(subjectList) {
const tbody = document.getElementById('subjectTableBody');

if (!subjectList || subjectList.length === 0) {
    tbody.innerHTML = displayEmptyState();
    return;
}

let html = '';
for (let subject of subjectList) {
    let id = subject.id || 'N/A';
    let matricNo = subject.matric_no || 'N/A';
    let subjectName = subject.subject_name || 'N/A';
    let subjectCode = subject.subject_code || 'N/A';
    
    // Using pure JavaScript string concatenation to prevent JSP compiler conflicts
    html += '<tr>' +
                '<td>' + id + '</td>' +
                '<td>' + matricNo + '</td>' +
                '<td>' + subjectName + '</td>' +
                '<td>' + subjectCode + '</td>' +
                '<td style="text-align: center;">' +
                    '<button onclick="updateSubject(' + id + ')">Update</button>' +
                    '<button onclick="deleteSubject(' + id + ')">Delete</button>' +
                '</td>' + 
            '</tr>';

}

tbody.innerHTML = html;
}

function displayEmptyState() {
    let html = '';
    
    html += '<tr>' +
                '<td colspan="4" style="text-align: center;"> NO VALUE FOUND </td>' +
            '</tr>';
    
    return html;
}

function deleteSubject(id) {
        if (confirm("Are you sure you want to delete subject with ID: " + id + "?")) {
        // Send AJAX request to servlet
        const contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf('/', 1));
        const url = contextPath + '/SubjectServlet?action=delete';
        
        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'id=' + id
        })
        .then(response => {
            if (response.ok) {
                return response.text();
            } else {
                throw new Error('Delete failed');
            }
        })
        .then(data => {
            // Success - refresh the table
            alert('Subject deleted successfully!');
            loadSubjectList(); // Your function to reload the table
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Failed to delete subject. Please try again.');
        });
    }
}

function updateSubject(id) {
    window.location.href = 'updateSubject.jsp?id=' + id;
}