
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Business.Complaint;
import Business.UserClass;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseWrapper {

    static PreparedStatement pState;
    static ResultSet rSet;
    static Connection connection;
    static String sqlQuery;
    static ArrayList<Complaint> caseList;
    static ArrayList<UserClass> userList;

    public static void createNewComplaint(String reporterid, String location, String category,
            String occDate, String occtime, String description, String status) {

        try {
            sqlQuery = "insert into cases( reporterid,location, category, occDate, occtime,description,status,"
                    + " DateReported) values (?,?,?,?,?,?,?,CURDATE())";

            connection = DatabaseConnection.getConnection();
            pState = connection.prepareStatement(sqlQuery);
            pState.setString(1, reporterid);
            pState.setString(2, location);
            pState.setString(3, category);
            pState.setString(4, occDate);
            pState.setString(5, occtime);
            pState.setString(6, description);
            pState.setString(7, status);
            pState.executeUpdate();
            // pState.close();
            //connection.close();
            System.out.println("Complaint Successfully Added");

        } catch (SQLException ex) {
            Logger.getLogger(DatabaseWrapper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //View all the complaints in the database
    public static ArrayList viewComplaints() throws SQLException {
        caseList = new ArrayList();
        connection = DatabaseConnection.getConnection();
        sqlQuery = "select * from cases order by DateReported";
        pState = connection.prepareStatement(sqlQuery);
        rSet = pState.executeQuery();

        while (rSet.next()) {
            Complaint comp = new Complaint();

            comp.setId(rSet.getInt(1));
            comp.setCategory(rSet.getString(2));
            comp.setLocation(rSet.getString(3));
            comp.setDetails(rSet.getString(4));
            comp.setOccDate(rSet.getString(5));
            comp.setDateReported(rSet.getDate(6));
            comp.setReporterId(rSet.getString(7));
            comp.setStatus(rSet.getString(8));

            caseList.add(comp);
            // pState.close();
            // connection.close();
        }

        return caseList;

    }

    //Add a staff user into the database
    public static int CreateUser(String id, String fName, String sName,
            String type, String addedby, String email, String phone) {

        PreparedStatement prepstat;
        String password = id;
        String query = "INSERT INTO staff (personid,fname, sname, "
                + "type,phone, password,email, date, addedby ) VALUES " + "(?,?,?,?,?,?, ?, curdate(),?)";
        try {

            //create a connection
            prepstat = DatabaseConnection.getConnection().prepareStatement(query);
            prepstat.setString(1, id);
            prepstat.setString(2, fName);
            prepstat.setString(3, sName);
            prepstat.setString(4, type);
            prepstat.setString(5, phone);
            prepstat.setString(6, password);
            prepstat.setString(7, email);

            prepstat.setString(8, addedby);

            return prepstat.executeUpdate();

        } catch (SQLException err) {
            return 0;

        }
    }

    //Validate the user credentials entered on the login page
    public static ResultSet validate(String name, String password) throws SQLException {

        PreparedStatement pState1;
        String query = "select * from user  where id=? and password=? ";
        pState1 = DatabaseConnection.getConnection().prepareStatement(query);

        pState1.setString(1, name);
        pState1.setString(2, password);
        rSet = pState1.executeQuery();

        return rSet;

    }

    //View all the staff users that have been added to the database
    public static ArrayList<UserClass> fetchUserListFromDB() throws SQLException, ClassNotFoundException {
        ArrayList userList1 = new ArrayList<>();

        sqlQuery = "select * from staff where type = ?";

        pState = DatabaseConnection.getConnection().prepareStatement(sqlQuery);
        pState.setString(1, "Officer");
        rSet = pState.executeQuery();

        while (rSet.next()) {

            UserClass user = new UserClass();
            user.setUserId(rSet.getString("personid"));
            user.setFname(rSet.getString("fname"));
            user.setSname(rSet.getString("sname"));

            userList1.add(user);

        }

        System.out.println("Staff successfully retrieved");
        return userList1;

    }

    //Allocate cases to the available officers
    public static void allocate(String caseId, String officerId) throws SQLException {
        String query = "insert into allocation( caseid, officerId, dateallocated) values( ?, ?, CURDATE())  ";
        String query1 = "update cases set status= ? where id = ?";
        PreparedStatement pState1;
        pState = (DatabaseConnection.getConnection()).prepareStatement(query);
        pState.setString(1, caseId);
        pState.setString(2, officerId);
        pState.executeUpdate();

        pState1 = (DatabaseConnection.getConnection()).prepareStatement(query1);
        pState1.setString(1, "allocated");
        pState1.setString(2, caseId);
        pState1.executeUpdate();

    }

    //Registration of new users into the system
    public static void registerUser(String id, String password, String email, String category,
            String fname, String sname, String phone) {
        try {
            String query = "insert into user( id, fname, sname, phone,type,  "
                    + "password, date, email   ) values(?,?,?,?, ?, ?,CURDATE(), ?)  ";

            pState = (DatabaseConnection.getConnection()).prepareStatement(query);
            pState.setString(1, id);
            pState.setString(2, fname);
            pState.setString(3, sname);
            pState.setString(4, phone);
            pState.setString(5, category);
            pState.setString(6, password);
            pState.setString(7, email);
            pState.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseWrapper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //Validate staff credentials entered at the staff login page
    public static UserClass validateStaff(String name, String password) throws SQLException {
        UserClass user = new UserClass();

        PreparedStatement pState1;
        String query = "select * from staff  where personid=? and password=? ";
        pState1 = DatabaseConnection.getConnection().prepareStatement(query);

        pState1.setString(1, name);
        pState1.setString(2, password);
        rSet = pState1.executeQuery();

        while (rSet.next()) {
            user.setFname(rSet.getString("fname"));
            user.setSname(rSet.getString("sname"));
            user.setUserType(rSet.getString("type"));

        }

        return user;
    }

    //View the c case allocations that have been made to the officers
    public static ArrayList viewAllocations(String officerID) throws SQLException {
        ArrayList<Complaint> allList = new ArrayList();

        connection = DatabaseConnection.getConnection();
        
        sqlQuery = "select cases.id,  cases.category,  cases.location,  cases.description,  cases.occdate,"
                + "  cases.datereported,  cases.reporterid, "
                + " allocation.dateallocated "
                + "from cases inner join allocation on cases.id = allocation.caseid and allocation.officerid = ? ";

        pState = connection.prepareStatement(sqlQuery);
        pState.setString(1, officerID);
       
        rSet = pState.executeQuery();

        while (rSet.next()) {
            Complaint comp = new Complaint();

            comp.setId(rSet.getInt("id"));
            comp.setCategory(rSet.getString("category"));
            comp.setLocation(rSet.getString("location"));
            comp.setDetails(rSet.getString("description"));
            comp.setOccDate(rSet.getString("occdate"));
            comp.setDateReported(rSet.getDate("datereported"));
            comp.setReporterId(rSet.getString("reporterid"));
            
            comp.setAllocationDate(rSet.getString("dateallocated"));
            System.out.println(allList);
            allList.add(comp);

        }

        return allList;

    }

    //retrieve the profile of a specific user of the system
    public static UserClass retriveUserProfile(String name, String role) throws SQLException {
        UserClass user = new UserClass();
        String query = null;
        PreparedStatement pState1;
        System.out.println(role);

        if (role.equals("Reporter")) {
            query = "select * from user where id=? ";

        } else if (role.equals("Officer") || role.equals("Admin")) {

            query = "select * from staff  where personid=? ";
        }
        pState1 = DatabaseConnection.getConnection().prepareStatement(query);

        pState1.setString(1, name);
        rSet = pState1.executeQuery();

        pState1.closeOnCompletion();

        while (rSet.next()) {

            user.setFname(rSet.getString("fname"));
            user.setSname(rSet.getString("sname"));
            //user.setUserId(rSet.getString("personid"));
            user.setEmailaddress(rSet.getString("email"));
            user.setPhone(rSet.getString("phone"));

        }

        return user;
    }

    public static ArrayList retriveStudentProfile(String name) throws SQLException {

        PreparedStatement pState1;
        String query = "select * from student  where reg=? ";
        pState1 = DatabaseConnection.getConnection().prepareStatement(query);

        pState1.setString(1, name);
        rSet = pState1.executeQuery();

        pState1.closeOnCompletion();
        ArrayList studList = new ArrayList();
        while (rSet.next()) {
            String reg = rSet.getString(1);
            String fName = rSet.getString(2);
            String phone = rSet.getString(3);
            String resident = rSet.getString(4);
            String hostel = rSet.getString(5);
            String room = rSet.getString(6);
            String course = rSet.getString(7);
            String status = rSet.getString(8);
            String email = rSet.getString(9);
            String residence;
            if (resident.equals("yes")) {
                residence = hostel + " " + room;
            } else {
                residence = "Non-Resident";
            }
            studList.add(reg);
            studList.add(fName);
            studList.add(phone);
            studList.add(residence);
            studList.add(course);
            studList.add(status);
            studList.add(email);

        }

        return studList;
    }

    //Save the path of the file that has been uploaded to the server
    public static void saveFile(String caseid, String type, String path, String uploadedby) throws SQLException {

        boolean y = fileExists(caseid, type);
        if (y == true) {
            String query = " update files  set path= ? where caseid=? and type =?";

            pState = (DatabaseConnection.getConnection()).prepareStatement(query);
            pState.setString(1, path);
            pState.setString(2, caseid);
            pState.setString(3, type);
            pState.executeUpdate();
            System.out.println("file info updated");
        } else {
            String query = "insert into files( caseid, type,  uploadedby, path, date   ) values(?,?,?,?,CURDATE()) ";

            pState = (DatabaseConnection.getConnection()).prepareStatement(query);
            pState.setString(1, caseid);
            pState.setString(2, type);
            pState.setString(3, uploadedby);
            pState.setString(4, path);
            pState.executeUpdate();
            System.out.println("file info saved");
        }

    }

    public static boolean fileExists(String id, String type) throws SQLException {
        sqlQuery = "select caseid from files where caseid = ? and type = ?";
        pState = (DatabaseConnection.getConnection()).prepareStatement(sqlQuery);
        pState.setString(1, id);
        pState.setString(2, type);
        boolean x = false;
        rSet = pState.executeQuery();
        System.out.println("checked");
        if (rSet.next()) {
            x = true;
        }
        return x;
    }

    public static ArrayList<UserClass> retriveUsers() throws SQLException {

        String query;

        query = "select * from staff where type = ? ";

        pState = DatabaseConnection.getConnection().prepareStatement(query);
        pState.setString(1, "Officer");
        rSet = pState.executeQuery();
        userList = new ArrayList();
        while (rSet.next()) {

            UserClass user = new UserClass();

            user.setFname(rSet.getString("fname"));
            user.setSname(rSet.getString("sname"));
            user.setUserId(rSet.getString("id"));
            user.setEmailaddress(rSet.getString("email"));
            user.setPhone(rSet.getString("phone"));
            user.setUserType(rSet.getString("type"));

            userList.add(user);

        }
        System.out.println(userList);
        return userList;
    }

    //Remove the staff user with the specified id from the database
    public static void removeUser(String id) throws SQLException {
        String query;
        query = "delete from staff where id = ? ";
        pState = DatabaseConnection.getConnection().prepareStatement(query);
        pState.setString(1, id);
        pState.executeUpdate();

        System.out.println("deleted");

    }

    public static ArrayList viewCases(String type) throws SQLException {

        connection = DatabaseConnection.getConnection();
        sqlQuery = "select * from cases where status=? ";
        System.out.print(type);
        pState = connection.prepareStatement(sqlQuery);
        pState.setString(1, type);
        rSet = pState.executeQuery();
        ArrayList<Complaint> casesList = new ArrayList();

        while (rSet.next()) {
            Complaint comp = new Complaint();

            comp.setId(rSet.getInt("id"));
            comp.setCategory(rSet.getString("category"));
            comp.setLocation(rSet.getString("location"));
            comp.setDetails(rSet.getString("description"));
            comp.setOccDate(rSet.getString("occDate"));
            comp.setDateReported(rSet.getDate("datereported"));
            comp.setReporterId(rSet.getString("reporterid"));
            comp.setStatus(rSet.getString("status"));

            casesList.add(comp);

        }
        System.out.println(casesList);
        return casesList;

    }

    public static Complaint viewCaseDetails(String id) throws SQLException {

        connection = DatabaseConnection.getConnection();
        sqlQuery = "select * from cases where id =?";
        String status = null;
        pState = connection.prepareStatement(sqlQuery);
        pState.setString(1, id);
        rSet = pState.executeQuery();
        Complaint comp = new Complaint();

        while (rSet.next()) {
            comp.setStatus(rSet.getString("status"));
            comp.setReporterId(rSet.getString("reporterid"));
            comp.setOccDate(rSet.getString("occdate"));
            comp.setLocation(rSet.getString("location"));
            comp.setId(rSet.getInt("id"));
            comp.setDetails(rSet.getString("description"));
            comp.setCategory(rSet.getString("category"));
            status = rSet.getString("status");
            System.out.println(status);
        }

        if (status.equals("allocated") || status.equals("resolved")) {

            sqlQuery = "select * from allocation where caseid =?";
            PreparedStatement pState1 = connection.prepareStatement(sqlQuery);
            pState1.setString(1, id);
            rSet = pState1.executeQuery();
            while (rSet.next()) {
                comp.setAllocationDate(rSet.getString("dateallocated"));
                comp.setOfficerAllocated(rSet.getString("officerid"));
            }
        }

        return comp;
    }

    //Retrieve the path of the file uploaded to the server
    public static String retrievePath(String caseId, String type) throws SQLException {
        String path = null;
        String query = "select path from files where caseid = ? and type = ?";

        pState = (DatabaseConnection.getConnection()).prepareStatement(query);
        pState.setString(1, caseId);
        pState.setString(2, type);
        rSet = pState.executeQuery();
        System.out.println("file info retrieved successfully");
        while (rSet.next()) {
            path = rSet.getString("path");
        }
        return path;
    }

    //change the user password to another 
    public static boolean changePass(String id, String role, String newPwd, String oldPwd) throws SQLException {
        String query = null, query1 = null, dbPassword = null;
        Boolean status = false;

        switch (role) {
            case "Admin":

                query = "select password from staff where personid=?";
                query1 = "update staff  set password= ? where personid=?";
                break;
            case "Officer":

                query = "select password from staff  where personid=?";
                query1 = "update staff  set password= ? where personid=?";
                break;

            case "Reporter":

                query = "select password from user  where id=?";
                query1 = "update user  set password= ? where id=?";
                break;

        }

        pState = (DatabaseConnection.getConnection()).prepareStatement(query);
        pState.setString(1, id);
        rSet = pState.executeQuery();

        while (rSet.next()) {
            dbPassword = rSet.getString("password");
            System.out.println(dbPassword);
        }

        if (dbPassword.equals(oldPwd)) {
            System.out.println("yes");
            pState = (DatabaseConnection.getConnection()).prepareStatement(query1);

            pState.setString(1, newPwd);
            pState.setString(2, id);

            pState.executeUpdate();

            status = true;
        }
        return status;
    }
    //View all the complaints in the database

    public static ArrayList viewUserCase(String reporterid) throws SQLException {
        caseList = new ArrayList();
        connection = DatabaseConnection.getConnection();
        sqlQuery = "select * from cases where reporterid = ?";
        pState = connection.prepareStatement(sqlQuery);
        pState.setString(1, reporterid);
        rSet = pState.executeQuery();

        while (rSet.next()) {
            Complaint comp = new Complaint();

            comp.setId(rSet.getInt("id"));
            comp.setCategory(rSet.getString("category"));
            comp.setLocation(rSet.getString("location"));
            comp.setDetails(rSet.getString("description"));
            comp.setOccDate(rSet.getString("occdate"));

            comp.setDateReported(rSet.getDate("datereported"));

            comp.setStatus(rSet.getString("status"));

            caseList.add(comp);
            System.out.println(caseList);
            // pState.close();
            // connection.close();
        }

        return caseList;

    }

    public static boolean verifyExisting(String id, String action) throws SQLException {
        boolean exists = false;
        if (action.equals("add")) {
            sqlQuery = "select personid from staff where personid = ? ";
        } else {
            sqlQuery = "select id from user where id = ? ";
        }
        connection = DatabaseConnection.getConnection();
        pState = connection.prepareStatement(sqlQuery);
        pState.setString(1, id);
        rSet = pState.executeQuery();

        if (rSet.next()) {
            exists = true;

        }

        return exists;

    }

    public static boolean checkFile(String id, String type) throws SQLException {
        boolean exists = false;
        sqlQuery = "select caseid from files where caseid = ? and type = ? ";
        connection = DatabaseConnection.getConnection();
        pState = connection.prepareStatement(sqlQuery);
        pState.setString(1, id);
        pState.setString(2, type);
        rSet = pState.executeQuery();

        if (rSet.next()) {
            exists = true;

        }

        return exists;
    }

    //Remove the staff user with the specified id from the database
    public static void resolveCase(String id) throws SQLException {
        String query;
        query = "update cases  set status = ? where id=? ";
        pState = DatabaseConnection.getConnection().prepareStatement(query);
        pState.setString(1, "resolved");
        pState.setString(2, id);
        pState.executeUpdate();

        System.out.println("Case successfully resolved");

    }

}
