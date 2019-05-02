/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import Business.Complaint;
import Business.UserClass;
import Data.DatabaseWrapper;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author justus
 */
public class TestClass {
    public static void main(String[] args) throws SQLException, ClassNotFoundException{
        ArrayList list = DatabaseWrapper.viewAllocations("H12");
         System.out.println(list);
    }
     
}

