/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import java.sql.Time;
import java.util.Date;

public class Complaint {

    private int id;
    private String reporterId;
    private String category;
    private String details;
    private Date dateReported;
    private String occDate;
    private String location;
    private String status;
    private String allocationId;
    private String officerAllocated;
    private String allocationDate;
    private String allocationRemarks;

    public Complaint() {

    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReporterId() {
        return reporterId;
    }

    public void setReporterId(String reporterId) {
        this.reporterId = reporterId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public Date getDateReported() {
        return dateReported;
    }

    public void setDateReported(Date dateReported) {
        this.dateReported = dateReported;
    }

    
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getOccDate() {
        return occDate;
    }

    public void setOccDate(String occDate) {
        this.occDate = occDate;
    }

    public String getAllocationId() {
        return allocationId;
    }

    public void setAllocationId(String allocationId) {
        this.allocationId = allocationId;
    }

    public String getOfficerAllocated() {
        return officerAllocated;
    }

    public void setOfficerAllocated(String officerAllocated) {
        this.officerAllocated = officerAllocated;
    }

    public String getAllocationDate() {
        return allocationDate;
    }

    public void setAllocationDate(String allocationDate) {
        this.allocationDate = allocationDate;
    }

    public String getAllocationRemarks() {
        return allocationRemarks;
    }

    public void setAllocationRemarks(String allocationRemarks) {
        this.allocationRemarks = allocationRemarks;
    }
    
  
}
