<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="net.barayand.sample.i18n.appMessage"/>
<html lang="${language}">

<head>
    <meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <title></title>
</head>

<body>
<!-- side-nav -->

<nav class="side-nav">
    <div class="logo">
        <img src="images/logo.png" alt="">
    </div>
    <ul class="nav-item">
        <li class="list-header"><fmt:message key="nav.item.home"/></li>
        <a class="list-item no-style active" href=""><fmt:message key="nav.item.about"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.newservice"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.contact"/></a>
    </ul>

    <ul class="nav-item">
        <li class="list-header"><fmt:message key="nav.item.shop"/></li>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.basebuy"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.pubnew"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.listservice"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.basebuy"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.pubnew"/></a>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.listservice"/></a>
    </ul>

    <ul class="nav-item">
        <li class="list-header"><fmt:message key="nav.item.home"/></li>
        <a class="list-item no-style" href=""><fmt:message key="nav.item.about"/></a>
    </ul>

</nav>

<!-- top-nav -->
<nav class="top-nav">

    <ul>
        <a class="no-style list-item" href=""><fmt:message key="home"/></a>
        <a class="no-style list-item active" href=""><fmt:message key="management"/></a>
        <a class="no-style list-item" href=""><fmt:message key="order.services"/></a>
        <a class="no-style list-item" href=""><fmt:message key="statistics"/></a>
    </ul>

    <div class="user">
        <a class="icon-bell no-style" href=""></a>
        <a class="icon-mail no-style" href=""></a>
        <a class="icon-help no-style" href=""></a>
        <div class="no-style">
            <form>
                <select id="language" name="language" onchange="submit()">
                    <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                    <option value="fa" ${language == 'fa' ? 'selected' : ''}>Persian</option>
                </select>
            </form>
        </div>
        <div class="user-dropdown">
            <img src="images/default-user-image.png" alt="">
            <span class="email">dabichi@gmai.com</span>
            <span class="caret"></span>
        </div>
    </div>

</nav>

<div class="content">
    <div class="scroll">
        <div class="page">
            <div class="page-url">
                <span><a href="">خانه</a></span>
                <span>مدیریت شماره ها</span>
            </div>

            <h1 class="h1">مدیریت شماره ها</h1>

            <div class="list-controls-wrapper">

                <div class="list-control">
                        <span class="item active">
اختصاص شماره های کوتاه به عنوان نشانه
                </span>
                    <span class="item">
وارد کردن پیوند شماره
                </span>
                    <span class="item">
پیکربدنی حقوق IPT
                </span>
                    <span class="item">
اعمال کردن بر اساس فیلتر ها
                </span>
                </div>

                <div class="list-search">
                    <input type="text">
                    <button class="icon-search"></button>
                    <button class="icon-filter"></button>
                </div>
            </div>


            <div class="table-responsive">
                <table class="table-default">
                    <thead>
                    <tr>
                        <th><input type="checkbox"></th>
                        <th>شماره</th>
                        <th>شماره کوتاه</th>
                        <th>نوع شماره</th>
                        <th>نوع ترمینال</th>
                        <th>وضعیت</th>
                        <th>مشترک</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td><input type="checkbox"></td>
                        <td>09367324432</td>
                        <td>4432</td>
                        <td>شماره کوتاه</td>
                        <td>دسترسی به شماره</td>
                        <td><span class="status error">اکانت  غیر محدود</span></td>
                        <td><a href="">IPphone5</a></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>09367324432</td>
                        <td>4432</td>
                        <td>شماره کوتاه</td>
                        <td></td>
                        <td><span class="status success">اکانت محدود</span></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>09367324432</td>
                        <td>4432</td>
                        <td>شماره کوتاه</td>
                        <td></td>
                        <td><span class="status success">اکانت محدود</span></td>
                        <td></td>
                    </tr>


                    </tbody>
                </table>
            </div>
        </div>

        <div class="side-pop">
            <div id="side-cancel">
                <i></i>
            </div>
            <h2>مشخصات شماره</h2>
            <ul>
                <li>
                    <span class="data-header">شماره</span>
                    <span class="data-info">۰۹۳۳۱۰۶۷۸۵</span>
                </li>
                <li>
                    <span class="data-header">نوع شماره</span>
                    <span class="data-info">شماره DID</span>
                </li>
                <li>
                    <span class="data-header">شماره کوتاه</span>
                    <span class="data-info">۴۴۴۴</span>
                </li>
                <li>
                    <span class="data-header">شماره نشان داده شده</span>
                    <span class="data-info">مانند زیر گروه</span>
                </li>
                <li>
                    <span class="data-header">نشان گذاری پیش نیاز خارج شرکت</span>
                    <span class="data-info">خیر</span>
                </li>
                <li>
                    <span class="data-header">همگام سازی سرویس</span>
                    <span class="data-info"></span>
                </li>
                <li>
                    <span class="data-header">علامت گذاری</span>
                    <span class="data-info">خیر</span>
                </li>
                <li>
                    <span class="data-header">شماره مجازی</span>
                    <span class="data-info"></span>
                </li>
            </ul>

            <div class="flex-center">
                <button class="default-button">تغیر</button>
                <button class="default-button active">دریافت سرویس آیپی</button>
            </div>

        </div>

    </div>
</div>

<!-- footer -->
<footer class="copyright">
    Copyright © 2010-2017 Graphic Resources S.L. All screenshots © their respective owners
</footer>

<script src="js/main.js"></script>
</body>

</html>