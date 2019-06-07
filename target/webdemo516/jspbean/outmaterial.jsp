<%--
  Created by IntelliJ IDEA.
  User: 81949
  Date: 2019/4/25
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="org.dom4j.Document,org.dom4j.Element,org.dom4j.io.SAXReader" %>
<%@ page import="org.dom4j.io.OutputFormat" %>
<%@ page import="org.dom4j.io.XMLWriter" %>
<%@ page import="javax.print.DocFlavor" %>
<body>
<p>
<li><%= request.getParameter("MaterialName")%>--文档生成成功！请注意查收！</li>
<li>文件目录：C:\Users\81949\Desktop\Weekend\ontologyBase </li>
</p>
</body>
<%
    String materilaName= request.getParameter("MaterialName");
    String quantity= request.getParameter("Quantity");
    String materialCategory= request.getParameter("MaterialCategory");
    String storeTime= request.getParameter("StoreTime");
    String materialHardness= request.getParameter("MaterialHardness");
    String thermalConductivity= request.getParameter("ThermalConductivity");
    String cte= request.getParameter("CTE");
    String modulusElasticity= request.getParameter("ModulusElasticity");
    String useful= request.getParameter("Useful");
    String[] sourceData = new String[]{materilaName,quantity,materialCategory,storeTime,materialCategory,materialHardness,thermalConductivity,cte,modulusElasticity,useful};
    System.out.println(sourceData[0]);

%>
<%--读写上述存于servlet的临时变量--%>
<%
    //    path
    int i=0;
    SAXReader reader = new SAXReader();
    try {
        String path = "C:\\Users\\81949\\Desktop\\Weekend\\resourceDemo\\MaterialDemo1.xml";
        Document document = reader.read(path);
        Element root = document.getRootElement();
//        System.out.println(root.getName());

        List<Element> lists = root.elements();  // 获取根元素的子元素
//        System.out.println(lists.toArray());
        for (Element e : lists) {
//            System.out.println(e.getName());
            List<Element> nodelists = e.elements(); // 获取根元素子元素的子元素

            for (Element node : nodelists) {
                node.setText(sourceData[i]);   // 修改节点的值  注意不能用setdata()函数
                System.out.println(node.getName()+":"+sourceData[i]);
                i++;
                if (i > sourceData.length) {
                    System.out.println("Transform finished！");
                }
            }
        }
//        文件输出测试
        FileOutputStream outputStream = new FileOutputStream("C:\\Users\\81949\\Desktop\\Weekend\\ontologyBase\\"+materilaName+".xml"); //指定输出位置
        OutputFormat format = OutputFormat.createPrettyPrint();  // 指定输出格式为标准格式
        format.setEncoding("utf-8");
        XMLWriter writer = new XMLWriter(outputStream, format);  // 实例化XMLWrite类
        writer.write(document);
        System.out.println("文件写入成功");
        writer.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

%>
