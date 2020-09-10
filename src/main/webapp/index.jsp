<%@ page import="database.HibernateUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <style>
        body{
            background:rgb(58,58,58);
            color: white;
            font-family: Helvetica;
        }
        h1{
            color: aqua;
            margin: 20px;
        }
        nav{
            display: inline-block;
            width: 100px;
        }
        ul{
            list-style-type: none ;
            margin: 0;
            padding: 0;
        }
        li{
            display: inline-block ;
            margin: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="navigator.jsp"/>
<header>
    <nav>
        <ul>
            <li><a href=index.jsp>O nas</a></li>
            <li><a href=galeria.jsp>Galeria</a></li>
            <li><a href=kontakt.jsp>Kontakt</a></li>
        </ul>
    </nav>
</header>

<h1>Jak adoptować psa</h1>
<p>
    Ze względu na dobrostan psa, decyzja o jego adopcji powinna być dokładnie przemyślana.
    Tutaj omawiamy niektóre z kluczowych czynników, które pomogą Ci podjąć właściwą decyzję.
    Adopcja psa, bez względu na to czy dotyczy szczenięcia czy psa dorosłego, ma swoje wady i zalety.
    Podejmując tę bardzo osobistą decyzję należy przede wszystkim uświadomić sobie, co jesteśmy w stanie
    zaoferować psu.
</p>
<h2>Korzyści z adopcji psa</h2>
<ul>
    <li>Może być to niezwykle satysfakcjonujące.</li>
    <li>Dorosłe psy nauczone są już często zachowania czystości w domu.</li>
    <li>Dorosłe psy mogą znać już podstawowe komendy.</li>
</ul>
<h2>Wyzwania wynikające z adopcji psa</h2>
<ul>
    <li>Trudno jest przewidzieć wielkość dorosłych osobników w przypadku szczeniąt mieszańców.</li>
    <li>U adoptowanych zwierząt mogą wystąpić problemy behawioralne.</li>
    <li>Dorosłe psy mogą nie znać podstawowych komend lub mieć utrwalone złe nawyki.</li>
</ul>
<h2>Najważniejsze wskazówki dotyczące adopcji psa</h2>
<p>
    Kluczem do udanej adopcji jest spędzanie czasu z wybranym psem, zanim zabierzemy go do domu.
    Przed podjęciem ostatecznej decyzji postaraj się odwiedzić psa kilka razy, poproś o możliwość
    zabrania go na spacer poza teren schroniska, zarówno na smyczy, jak i bez. Jeśli to możliwe,
    przewieź go samochodem i poobserwuj jego zachowanie w różnych okolicznościach.
</p>

<button>
    Kilknij tutaj aby dowiedzieć się jak adoptować psa
</button>


</body>
</html>
