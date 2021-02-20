import java.sql.*;

public class DockerConnectMySQL {
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://assignment4_215425622_db:3306/test_db";

   static final String USER = "root";
   static final String PASS = "root";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      Class.forName("com.mysql.jdbc.Driver");

      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      stmt = conn.createStatement();
      String sql;
      sql = "SELECT id, student_id, mark, subject FROM marks";
      ResultSet rs = stmt.executeQuery(sql);

      while(rs.next()){
         int id  = rs.getInt("id");
         int student_id = rs.getInt("student_id");
         int mark = rs.getInt("mark");
	String subject = rs.getString("subject");

         System.out.println("ID: " + id);
         System.out.println(", Student id: " + student_id);
         System.out.println(", Mark: " + mark);
	System.out.println(", Subject: " + subject);

      }
      rs.close();
      stmt.close();
      conn.close();
   }catch(SQLException se){
      se.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }
   }
 }
}
