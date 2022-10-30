<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kopo.poly.dto.NoticeDTO" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.dto.FoodDTO" %>
<%@ page import="java.util.ArrayList" %>

<%
//    session.setAttribute("SESSION_USER_ID", "USER01");

    List<FoodDTO> rList = (List<FoodDTO>) request.getAttribute("rList");


    if (rList == null) {
        rList = new ArrayList<FoodDTO>();

    }

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>게시판 글보기</title>
<%--    <script type="text/javascript">--%>

<%--        //상세보기 이동--%>
<%--        function doDetail(seq) {--%>
<%--            location.href = "" + email;--%>
<%--        }--%>

<%--    </script>--%>

    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="ogani-master/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="ogani-master/css/style.css" type="text/css">

    <!--    registration css-->
    <link rel="stylesheet" href="/comport-master/assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="/comport-master/assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="/comport-master/assets/fonts/flat-icon/flaticon.css">
    <link rel="stylesheet" href="/comport-master/assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="/comport-master/assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="/comport-master/assets/css/nice-select.css">
    <link rel="stylesheet" href="/comport-master/assets/css/style.css">


<%--    js--%>
    <script src="ogani-master/js/jquery-3.3.1.min.js"></script>
    <script src="ogani-master/js/bootstrap.min.js"></script>
    <script src="ogani-master/js/jquery.nice-select.min.js"></script>
    <script src="ogani-master/js/jquery-ui.min.js"></script>
    <script src="ogani-master/js/jquery.slicknav.js"></script>
    <script src="ogani-master/js/mixitup.min.js"></script>
    <script src="ogani-master/js/owl.carousel.min.js"></script>
    <script src="ogani-master/js/main.js"></script>




</head>
<body>
<!-- Header Section Begin -->
<%@include file="../includes/header.jsp"%>




<%--<table border="1" width="600px">--%>
<%--    <tr>--%>
<%--        <td width="100" align="center">상품명</td>--%>
<%--        <td width="200" align="center">가격</td>--%>
<%--        <td width="100" align="center">수량</td>--%>
<%--        <td width="100" align="center">유통기한</td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        for (int i = 0; i < rList.size(); i++) {--%>
<%--            FoodDTO fDTO = rList.get(i);--%>

<%--            if (fDTO == null) {--%>
<%--                fDTO = new FoodDTO();--%>
<%--            }--%>

<%--    %>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <a href="javascript:doDetail('<%=CmmUtil.nvl(fDTO.getP_num())%>');">--%>
<%--                <%=CmmUtil.nvl(fDTO.getP_name()) %>--%>
<%--            </a>--%>
<%--        </td>--%>
<%--        <td align="center"><%=CmmUtil.nvl(fDTO.getP_price()) %>--%>
<%--        </td>--%>
<%--        <td align="center"><%=CmmUtil.nvl(fDTO.getP_sell()) %>--%>
<%--        </td>--%>
<%--        <td align="center"><%=CmmUtil.nvl(fDTO.getP_period()) %>--%>
<%--        </td>--%>
<%--    </tr>--%>

<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>

<table border="1" width="100%">

    <tr>
        <td>상품명</td>
        <td>가격</td>
        <td>수량</td>
        <td>유통기한</td>
    </tr>

    <% for (int i =0; i<rList.size(); i++)
    {
    %>

    <tr>
        <td><%= rList.get(i).getP_name()%> </td>
        <td><%= rList.get(i).getP_price()%></td>
        <td> <%= rList.get(i).getP_sell()%></td>
        <td> <%= rList.get(i).getP_period()%></td>
    </tr>
    <% } %>
</table>











<!-- Footer Section Begin -->
<%@include file="../includes/footer.jsp"%>
<!-- Footer Section End -->
</body>
</html>