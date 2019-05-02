/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Data.DatabaseWrapper;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author luganu
 */
public class NewClass {

    public static void main(String[] args) throws SQLException {

        ArrayList c;
        UserClass usr = new UserClass();
        c = DatabaseWrapper.retriveUsers();
        c.forEach((e) -> {
            System.out.println(e);
            
        });

    }

}
