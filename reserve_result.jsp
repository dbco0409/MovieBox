<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
 <%
    request.setCharacterEncoding("euc-kr");
	 int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where= Integer.parseInt(request.getParameter("where"));
	  int days=Integer.parseInt(request.getParameter("date")); 
	int tim=Integer.parseInt(request.getParameter("time"));
	int people=Integer.parseInt(request.getParameter("people")); 
	String siter[]=request.getParameterValues("sit");
	String sit="";

for (int i=0;i<siter.length;i++){
		sit+=siter[i]+" ";
	}

String name=request.getParameter("name");
String card=request.getParameter("card1")+"-"+request.getParameter("card2")+"-"+request.getParameter("card3")+"-"+request.getParameter("card4");
String cardDate=request.getParameter("Caryear")+"-"+request.getParameter("Carmonth");
int pwd=Integer.parseInt(request.getParameter("Carpwd")); 
int Joomin=Integer.parseInt(request.getParameter("Joomin")); 
int price=Integer.parseInt(request.getParameter("price")); 


		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속   
	 
String date;
String jsql5 = "select month, days, day from date where days like ?";
		PreparedStatement pstmt5 = con.prepareStatement(jsql5);
			pstmt5.setInt(1, days);
			ResultSet rs5 = pstmt5.executeQuery(); 
rs5.next();
	date=rs5.getInt("month")+"월 "+rs5.getInt("days")+"일 ("+rs5.getString("day")+")";
rs5.close();

	 String jsql11 = "select * from reserve_adm where reserve_no=?";
		PreparedStatement pstmt11 = con.prepareStatement(jsql11);
		pstmt11.setInt(1, reserve_no);
		ResultSet rs11 = pstmt11.executeQuery();

           rs11.next();
	String rctg = rs11.getString("rctg");
	String subject = rs11.getString("subject");
	String time=rs11.getString("time");
		String[ ]  timeArr = time.split(",");      	
			String[]  rctgArr = rctg.split(",");
			String tm=timeArr[tim];
			String mo=rctgArr[where];

			rs11.close();

String jsql = "select MAX(cart_no) from reserve_cart";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 

	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    

	String jsql2 = "INSERT INTO reserve_cart (cart_no, movie, megabox, date, time, people, sit, price, id, card, cardDate, pwd, Joomin) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt2 = con.prepareStatement(jsql2);
pstmt2.setInt(1, no);
pstmt2.setString(2, subject);
pstmt2.setString(3, mo);
pstmt2.setString(4, date);
pstmt2.setString(5, tm);
pstmt2.setInt(6, people);
pstmt2.setString(7, sit);
pstmt2.setInt(8, price);
pstmt2.setString(9,id);
pstmt2.setString(10, card);
pstmt2.setString(11, cardDate);
pstmt2.setInt(12, pwd);
pstmt2.setInt(13, Joomin);
pstmt2.executeUpdate();

  %>