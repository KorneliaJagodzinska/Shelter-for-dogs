<%@ page import="database.HibernateUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<header>
    <nav>
        <jsp:include page="navigator.jsp"/>
    </nav>
</header>
<section class="section1">
    <h1>Jak adoptować psa</h1>
    <p>
        Ze względu na dobrostan psa, decyzja o jego adopcji powinna być dokładnie przemyślana.
        Tutaj omawiamy niektóre z kluczowych czynników, które pomogą Ci podjąć właściwą decyzję.
        Adopcja psa, bez względu na to czy dotyczy szczenięcia czy psa dorosłego, ma swoje wady i zalety.
        Podejmując tę bardzo osobistą decyzję należy przede wszystkim uświadomić sobie, co jesteśmy w stanie
        zaoferować psu.
    </p>
</section>


<section class="section2">
    <div>
        <h2>Korzyści z adopcji psa</h2>
        <p>
            Może być to niezwykle satysfakcjonujące.
            Dorosłe psy nauczone są już często zachowania czystości w domu.
            Dorosłe psy mogą znać już podstawowe komendy.
        </p>
    </div>
    <div>
        <h2>Wyzwania wynikające z adopcji psa</h2>
        <p>
            Trudno jest przewidzieć wielkość dorosłych osobników w przypadku szczeniąt mieszańców.
            U adoptowanych zwierząt mogą wystąpić problemy behawioralne.
            Dorosłe psy mogą nie znać podstawowych komend lub mieć utrwalone złe nawyki.
        </p>
    </div>
    <div>
        <h2>Najważniejsze wskazówki dotyczące adopcji psa</h2>
        <p>
            Kluczem do udanej adopcji jest spędzanie czasu z wybranym psem, zanim zabierzemy go do domu.
            Przed podjęciem ostatecznej decyzji postaraj się odwiedzić psa kilka razy, poproś o możliwość
            zabrania go na spacer poza teren schroniska, zarówno na smyczy, jak i bez. Jeśli to możliwe,
            przewieź go samochodem i poobserwuj jego zachowanie w różnych okolicznościach.
        </p>
    </div>
</section>
<footer>
    <button>
        Kilknij tutaj aby dowiedzieć się jak adoptować psa
    </button>
</footer>



</body>
</html>
