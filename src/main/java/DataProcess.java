// 利用mapreduce 进行数据的统计  加工数量，加工进度，加工效率（每次加工的时间），报警数量，基于 统计数据变化的逆向控制，资源消耗数量
import java.net.ConnectException;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class DataProcess {
    private static String dirvername = "org.apache.hive.jdbc.HiveDriver";

    private static String url = "jdbc:hive2://192.168.1:2181/default";
    private static String user = "admin";
    private static String password = "admin";

    private static Connection connection = null;
    private static Statement statement = null;
    private static ResultSet resultSet = null;

    public void hiveConnect() {
        try {
            Class.forName(dirvername);
        } catch (ClassNotFoundException e) {
            System.out.println("hivedriver start fail!");
            e.printStackTrace();  // 打印异常位置和出错原
        }

        try {
            connection = DriverManager.getConnection(url, user, password);

            if (!connection.isClosed()) {
                System.out.println("hive connection success!");
                // start exec in hive
                statement = connection.createStatement();

                String sql;


            }
        } catch (SQLException e) {
            System.out.println("hive connect fail");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
