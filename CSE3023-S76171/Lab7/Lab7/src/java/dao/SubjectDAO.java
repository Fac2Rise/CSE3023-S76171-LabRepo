/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.SubjectBean;
import util.DBConnection;
import java.sql.*;

/**
 *
 * @author junel
 */
public class SubjectDAO {
    
    public List<SubjectBean> getSubjectByMatric (String matricNo) throws SQLException {
        
        List<SubjectBean> subjectList = new ArrayList<>();
        String query = "SELECT * FROM registered_subjects WHERE matric_no = ?";
        
        try (Connection conn = DBConnection.getConnection(); 
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            
            pstmt.setString(1, matricNo);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                SubjectBean obj = new SubjectBean();
                obj.setId(rs.getInt("id"));
                obj.setMatric_no(rs.getString("matric_no"));
                obj.setSubject_name(rs.getString("subject_name"));
                obj.setSubject_code(rs.getString("subject_code"));
                
                subjectList.add(obj);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        
        return subjectList;
    }
    
    public boolean registerSubject(String matricNo, String subjectName, String subjectCode){
        
        String query = "INSERT INTO registered_subjects (matric_no, subject_name, subject_code) VALUES (?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection(); 
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            
            pstmt.setString(1, matricNo);
            pstmt.setString(2, subjectName);
            pstmt.setString(3, subjectCode);
            
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e){
            e.printStackTrace();
        }
        
        return false;
    }
    
    public boolean deleteSubject(String id){
        
        String query = "DELETE FROM registered_subjects WHERE id = ?";
        
        try (Connection conn = DBConnection.getConnection(); 
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            
            pstmt.setString(1, id);
            
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e){
            e.printStackTrace();
        }
        
        return false;
    }
    
    public boolean updateSubject(String id, String subjectName, String subjectCode){
        
        String query = "UPDATE registered_subjects SET subject_name = ?, subject_code = ? WHERE id = ?";
        
        try (Connection conn = DBConnection.getConnection(); 
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            
            pstmt.setString(1, subjectName);
            pstmt.setString(2, subjectCode);
            pstmt.setString(3, id);
            
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e){
            e.printStackTrace();
        }
        
        return false;
    }
}
