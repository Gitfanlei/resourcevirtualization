import jdk.nashorn.internal.objects.annotations.Where;

import javax.swing.plaf.nimbus.State;
import java.net.ConnectException;
import java.sql.*;
import java.util.Scanner;


public class ResourceSearch {
    // 资源入库之后需要实现资源的查询与匹配过程
    mysqlconnect sqlConnect= new mysqlconnect();
    public static String name;
    public static String url;
    public static String passWord;

    Connection connection = null;

    public ResourceSearch()
    {
        getElement();
        connectSql();
    }

    public void getElement()
    {
        name=sqlConnect.getName();

        url = sqlConnect.getUrl();
        passWord = sqlConnect.getPassword();
    }

    public void connectSql()
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e)
        {
            System.out.println("can't find driver");
            e.printStackTrace();
        }

        // connect sql and excute query
        try {
            connection = DriverManager.getConnection(url, name, passWord);
            if (!connection.isClosed())
            {
                System.out.println("connect success!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    // 查询 基于订单的查询    可以读取html上面的节点    然后读取节点值  从而进去检索
    public void resourceSearch()
    {
        Scanner scanner = new Scanner(System.in);  // 利用系统输入扫描的方式
        System.out.println("查询开始！"+"\n");
        System.out.println("Input:");
        String query = scanner.nextLine();
        String Q = "\'" + "%" + query + "%" + "\'";

        // 查询分为两类 基于订单的查询 和基于 直接输入的查询

        if (query != null) {
            try {
                if (!connection.isClosed()) {
                    Statement statement = connection.createStatement();

                    String sql = "select * from deviceresource,humanresource,materialsresource" + " where name like "+Q+" or Materialname LIKE "+Q+" or PerName like "+Q;    // 问题 需要统一部分关键属性的列标，便于查询
                    System.out.println(sql);
                    ResultSet resultSet=statement.executeQuery(sql);

                    // 仅表达了机床
                    while (resultSet.next()) {
                        String name = resultSet.getString("Name");
                        String number = resultSet.getString("Number");
                        String hourecost = resultSet.getString("Hourcost");
                        String propre = resultSet.getString("Proprecision");
                        String localpre = resultSet.getString("Localprecision");
                        String relocalpre = resultSet.getString("Relocalprecision");
                        System.out.println(name+"\t"+number+"\t"+hourecost+"\t"+propre+"\t"+localpre+"\t"+relocalpre);
                    }

                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }



    }


}
