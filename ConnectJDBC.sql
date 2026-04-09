#Co user va pass:  
Connection conn = null;
 try {

            String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=BookStore;encrypt=true;trustServerCertificate=true";
            String user = "sa";
            String pass = "sa123456";
            //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(dbURL, user, pass);
            //System.out.println("Connect to DB successfully");
 } catch (Exception ex) {
            ex.printStackTrace();
}

String dbURL = "jdbc:sqlserver://TRUONG-LANG\\SQLEXPRESS;databaseName=BookStore;encrypt=true;trustServerCertificate=true";


#Khong co user va pass:
Connection conn = null;
try (Connection conn = DriverManager.getConnection(dbURL)) {
    System.out.println("Kết nối bằng Windows Authentication thành công!");
} catch (SQLException ex) {
    ex.printStackTrace();
}

String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=BookStore;integratedSecurity=true;encrypt=true;trustServerCertificate=true";
