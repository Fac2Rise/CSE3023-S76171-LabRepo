/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author junel
 */
public class SubjectBean implements Serializable{
    
    private int id;
    private String matric_no;
    private String subject_name;
    private String subject_code;
    
    public SubjectBean() {}
    
    public SubjectBean (int id, String matric_no, String subject_name, String subject_code) {
        this.id = id;
        this.matric_no = matric_no;
        this.subject_name = subject_name;
        this.subject_code = subject_code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMatric_no() {
        return matric_no;
    }

    public void setMatric_no(String matric_no) {
        this.matric_no = matric_no;
    }

    public String getSubject_name() {
        return subject_name;
    }

    public void setSubject_name(String subject_name) {
        this.subject_name = subject_name;
    }

    public String getSubject_code() {
        return subject_code;
    }

    public void setSubject_code(String subject_code) {
        this.subject_code = subject_code;
    }
    
    
}
