<%--
  Created by IntelliJ IDEA.
  User: 81949
  Date: 2019/4/25
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="org.dom4j.Document,org.dom4j.Element,org.dom4j.io.SAXReader" %>
<%@ page import="org.dom4j.io.OutputFormat" %>
<%@ page import="org.dom4j.io.XMLWriter" %>
<body>
<p>
<li><%= request.getParameter("Name")%>--文档生成成功！请注意查收！</li>
<li>文件目录：C:\Users\81949\Desktop\Weekend\ontologyBase </li>
</p>
</body>
<%
//    bascInfo
    String name = request.getParameter("Name");
    String number = request.getParameter("Number");
    String deviceType = request.getParameter("DeviceType");
    String type = request.getParameter("Type");
    String workShop = request.getParameter("WorkShop");
    String brand = request.getParameter("Brand");
    String manufacturing = request.getParameter("Manufacturing");
    String hourCost = request.getParameter("HourCost");
    String datetime = request.getParameter("Datetime");
//    deviceParameter
    String size= request.getParameter("Size");
    String weight= request.getParameter("Weight");
    String load= request.getParameter("Load");
    String speed= request.getParameter("Speed");
    String feed= request.getParameter("Feed");
    String toolType= request.getParameter("ToolType");
    String toolNum= request.getParameter("ToolNum");
    String power= request.getParameter("Power");
//    ProcessPerformance
    String processPre= request.getParameter("ProcessPre");
    String localPre= request.getParameter("LocalPre");
    String reLocalPre= request.getParameter("ReLocalPre");
    String materialType= request.getParameter("MaterialType");
    String hardness= request.getParameter("Hardness");
    String xStroke= request.getParameter("XStroke");
    String yStroke= request.getParameter("YStroke");
    String zStroke= request.getParameter("ZStroke");
//    TechPerformance
    String controlSys= request.getParameter("ControlSys");
    String operatorModel= request.getParameter("OperatorModel");
    String communication= request.getParameter("Communication");

    String[] sourceData = new String[]{name,number,deviceType,type,workShop,brand,manufacturing,hourCost,datetime,size,weight,load,speed,feed,toolType,toolNum,power,
            processPre,localPre,reLocalPre,materialType,hardness,xStroke,yStroke,zStroke,controlSys,operatorModel,communication};
    System.out.println(sourceData);
    System.out.println(sourceData[0]);


%>
<%--读写上述存于servlet的临时变量--%>
<%
    //    path
    int i=0;
    SAXReader reader = new SAXReader();
    try {
        String path = "C:\\Users\\81949\\Desktop\\Weekend\\resourceDemo\\DeviceDemo1.xml";
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
        FileOutputStream outputStream = new FileOutputStream("C:\\Users\\81949\\Desktop\\Weekend\\ontologyBase\\"+name+".xml"); //指定输出位置
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
