<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知孚IP</title>
	<link href="css/brand_Register.css" rel="stylesheet" type="text/css" />
  <link href="images/index/ICO32.ico" rel="shortcut icon" type="image/x-icon" />
  <script type="text/javascript">
    var click01;
    function ShowDiv(e){
        click01=new String(e.id);
        var Func=click01.toUpperCase();
        document.getElementById(Func).style.display="block";
        document.getElementById("N").style.display="block";
        document.getElementById("content_middle_left").style.display="block";
    }
    function ClearDiv(e){
        click01=new String(e.id);
        var Func=click01.toUpperCase();
        document.getElementById(Func).style.display="none";
        document.getElementById("N").style.display="none";
        document.getElementById("content_middle_left").style.display="none";
    }
    function showall(){
        document.getElementById("content_middle_left").style.display="block";
    }
    function hideall(){
        document.getElementById("content_middle_left").style.display="none";
    }
    </script>
</head>

<body>
	<!--头部-->
	<div id="top">
    <div class="text">
    		<ul class="log left">
        	<li style="padding:0;">欢迎来到知孚IP！</li>
          <c:choose>
        		<c:when test="${sessionScope.user_session eq null}">
        			 <li><a class="active" href="/brand1/login.jsp">请登录</a></li>
        		</c:when>
        		<c:otherwise>
        			<span class="active">&nbsp &nbsp用户： ${sessionScope.user_session.username} <a href="${pageContext.request.contextPath}/logut.action">退出</a></apan>
        		</c:otherwise>
        	</c:choose>
        </ul>
        <ul class="detail right">
        	<li><a href="${pageContext.request.contextPath}/finndUserInfo.action">个人信息</a></li>
          <li><a href="${pageContext.request.contextPath}/pshowFavorites.action">收藏夹</a></li>
          <li>服务热线：<span class="active">000-000-0000</span></li>
        </ul>
      </div>
  </div>
  <!--搜索-->
  <div id="search">
  	<img src="images/index/LOGO.gif" title="知孚IP" alt="LOGO" />
    <form action="${pageContext.request.contextPath}/query.action" method="post">
    	<input class="text" type="text" name="bname" placeholder="请输入商标名称或编号" /><input class="submit" type="submit" name="提交按钮" value="搜索" />
    </form>
    <div class="hot">
    	<a href="${ctx}/queryByremen.action?bname=家具服装">家具服装</a> |
      <a href="${ctx}/queryByremen.action?bname=日化用品">日化用品</a> |
      <a href="${ctx}/queryByremen.action?bname=办公用品">办公用品</a> |
      <a href="${ctx}/queryByremen.action?bname=健身医疗">健身医疗</a> |
      <a href="${ctx}/queryByremen.action?bname=食品">食品</a> |
      <a href="${ctx}/queryByremen.action?bname=教育">教育</a>
      <a href="${pageContext.request.contextPath}/sort.action">更多>></a>
    </div>
  </div>
  <!--导航-->
  <div id="nav">
  	<div class="list">
    	<a href="#"><p>商标主题</p></a>
    </div>
    <ul>
      <li><a class="active" href="${pageContext.request.contextPath}/toIndex.action">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/listBypage.action">精品商标转让</a></li>
      <li><a href="brand_Wanted.jsp">商标购买</a></li>
      <li><a href="${pageContext.request.contextPath}/insertDemand.action">商标注册</a></li>
      <li><a href="brand_Query.jsp">商标查询</a></li>
      <li><a href="${pageContext.request.contextPath}/sort.action">商标分类</a></li>
     <li><a href="${pageContext.request.contextPath}/toIndex.action">版权专利</a></li>

    </ul>
  </div>
  <!--分割线-->
  <div id="Parting line" style="width:100%; height:0; border:1px solid #eb0e1f; margin:0 auto;"></div>
  <!--中间内容-->
  <div id="content" >
    <div class="query">
      <div class="main">
          <p class="register">商&nbsp; 标&nbsp; 注&nbsp; 册</p>
          <div class="registration_query">
            <form action="${pageContext.request.contextPath}/query.action" method="post">
              <input class="text" type="text" name="搜索框" placeholder="请输入商标名称" /><input class="submit" type="submit" name="提交按钮" value="查询能否注册" />
            </form>
          </div>
        </div>
        <div class="content_middle">
            <div class="content_middle_left"  id="content_middle_left" style="display:none;" onmouseover="showall()" onmouseout="hideall()">
                <div class="content_middle_top" >
                    <ul class="content_info" id="n">
                        <li id="n1"  onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                            <h2 class="content_title"><a href="#">服装鞋帽（25类）</a></h2>
                            <ul class="content_infos">
                                <li ><a href="#">男装</a></li>
                                <li><a href="#">女装</a></li>
                                <li><a href="#">童装</a></li>
                                <li><a href="#">裤子</a></li>
                                <li><a href="#">鞋袜</a></li>
                            </ul>
                        </li>
                        <li id="n2" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                            <h2 class="content_title"><a href="#">日化用品（3类）</a></h2>
                            <ul class="content_infos">
                                <li><a href="#">香皂</a></li>
                            <li><a href="#">洗面奶</a></li>
                            <li style="width:70px;"><a href="#" >美容面膜</a></li>
                            <li><a href="#">洗发水</a></li>                          
                            </ul>
                        </li>
                    <li id="n3" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="#">酒精饮品（30类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">白酒</a></li>
                            <li><a href="#">鸡尾酒</a></li>
                            <li><a href="#">蜂蜜酒</a></li>
                            <li style="width:70px;"><a href="#">酒精饮品</a></li>
                        </ul>
                    </li>
                    <li id="n4" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="#">食品（9类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">肉</a></li>
                            <li><a href="#">牛奶</a></li>
                            <li><a href="#">奶粉</a></li>
                            <li><a href="#">食用油</a></li>
                            <li><a href="#">坚果</a></li>
                        </ul>
                    </li>
                    <li id="n5" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                        <h2 class="content_title"><a href="#">方便食品（20类）</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">咖啡</a></li>
                            <li><a href="#">面包</a></li>
                            <li><a href="#">饼干</a></li>
                            <li><a href="#">蜂蜜</a></li>
                            <li><a href="#">蛋糕</a></li>
                        </ul>
                    </li>
                    <li id="n6" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)"> 
                        <h2 class="content_title"><a href="#">家具用品</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">床</a></li>
                            <li><a href="#">茶几</a></li>
                            <li><a href="#">沙发</a></li>
                            <li><a href="#">座椅</a></li>
                            <li><a href="#">床垫</a></li>
                        </ul>
                    </li>
                    <li id="n7" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)"> 
                        <h2 class="content_title"><a href="#">医药用品</a></h2>
                        <ul class="content_infos">
                            <li><a href="#">减肥药</a></li>
                            <li><a href="#">维他命</a></li>
                            <li><a href="#">药酒</a></li>
                        </ul>
                    </li>
                    </ul>
                </div>
                <div class="content_middle_bottom"><a href="brand_Transfer.jsp"><img alt="more" title="精品商标转让" src="images/index/content_bottom.jpg" /></a></div>
            </div>
            <!--Js展示内容开始--><!--style="display:none"-->
            <div class="content_middle_top_show" id="N" style="display:none">
                <div id="N1" class="N1" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>衣物</p>                     
                        <li><a href="">服装</a><span>|</span></li>
                        <li><a href="">男装</a><span>|</span></li>
                        <li><a href="">女装</a><span>|</span></li>
                        <li><a href="">裤子</a><span>|</span></li>
                        <li><a href="">工装裤</a><span>|</span></li>
                        <li><a href="">衬衣</a><span>|</span></li>
                        <li><a href="">大衣</a><span>|</span></li>
                        <li><a href="">皮衣</a><span>|</span></li>
                        <li><a href="">T恤衫</a><span>|</span></li>
                        <li><a href="">衬衫</a></li>
                    </ul>
                    <ul>     
                        <p>婴儿纺织用品</p>                     
                        <li><a href="">婴儿裤</a><span>|</span></li>
                        <li><a href="">婴儿全套衣（小孩用）</a><span>|</span></li>
                        <li><a href="">非纸质围</a><span>|</span></li>
                        <li><a href="">婴儿睡袋</a></li>
                    </ul>
                     <ul>     
                        <p>鞋</p>                     
                        <li><a href="">运动鞋</a><span>|</span></li>
                        <li><a href="">凉鞋</a><span>|</span></li>
                        <li><a href="">拖鞋</a><span>|</span></li>
                        <li><a href="">雨鞋</a><span>|</span></li>
                        <li><a href="">靴</a><span>|</span></li>
                        <li><a href="">半筒靴</a><span>|</span></li>
                        <li><a href="">运动靴</a><span>|</span></li>
                        <li><a href="">系带靴子</a><span>|</span></li>
                        <li><a href="">鞋垫</a><span>|</span></li>
                        <li><a href="">鞋底</a></li>
                    </ul>
                    <ul>     
                        <p>帽</p>                     
                        <li><a href="">男帽</a><span>|</span></li>
                        <li><a href="">女帽</a><span>|</span></li>
                        <li><a href="">儿童帽</a><span>|</span></li>
                        <li><a href="">帽子(头戴)</a><span>|</span></li>
                        <li><a href="">头戴(服装)</a><span>|</span></li>
                        <li><a href="">浴帽</a><span>|</span></li>
                        <li><a href="">耳套(服装)</a></li>
                    </ul>
                    <ul>     
                        <p>袜</p>                     
                        <li><a href="">长袜</a><span>|</span></li>
                        <li><a href="">短袜</a><span>|</span></li>
                        <li><a href="">丝袜</a><span>|</span></li>
                        <li><a href="">袜裤</a></li>
                    </ul>
                    <ul>     
                        <p>特殊用鞋</p>                     
                        <li><a href="">爬山鞋</a><span>|</span></li>
                        <li><a href="">跑鞋（带金属钉）</a><span>|</span></li>
                        <li><a href="">滑雪靴</a><span>|</span></li>
                        <li><a href="">足球鞋</a><span>|</span></li>
                        <li><a href="">体操鞋</a><span>|</span></li>
                        <li><a href="">足球靴</a></li>
                    </ul>
                </div>
                <div id="N2" class="N2" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>洗洁用品</p>                     
                        <li><a href="">香皂</a><span>|</span></li>
                        <li><a href="">洗面奶</a><span>|</span></li>
                        <li><a href="">浴液</a><span>|</span></li>
                        <li><a href="">护发素</a><span>|</span></li>
                        <li><a href="">洗衣液</a><span>|</span></li>
                        <li><a href="">肥皂</a><span>|</span></li>
                        <li><a href="">杏仁肥皂</a><span>|</span></li>
                        <li><a href="">抑菌洗手液</a></li>
                    </ul>
                    <ul>     
                        <p>洗洁去渍制剂</p>                     
                        <li><a href="">去污剂</a><span>|</span></li>
                        <li><a href="">清洗用洗涤碱</a><span>|</span></li>
                        <li><a href="">清洁制剂</a><span>|</span></li>
                        <li><a href="">明矾石(收敛剂)</a></li>
                    </ul>
                     <ul>     
                        <p>香料、香精油</p>                     
                        <li><a href="">香料</a><span>|</span></li>
                        <li><a href="">花精</a><span>|</span></li>
                        <li><a href="">香精油</a><span>|</span></li>
                        <li><a href="">香木</a><span>|</span></li>
                        <li><a href="">玫瑰油</a><span>|</span></li>
                        <li><a href="">芳香剂(香精油)</a><span>|</span></li>
                        <li><a href="">芳香精油</a></li>
                    </ul>
                    <ul>     
                        <p>化妆品</p>                     
                        <li><a href="">个人用除臭剂</a><span>|</span></li>
                        <li><a href="">美容面膜</a><span>|</span></li>
                        <li><a href="">香水</a><span>|</span></li>
                        <li><a href="">口红</a><span>|</span></li>
                        <li><a href="">防皱霜</a><span>|</span></li>
                        <li><a href="">假睫毛</a><span>|</span></li>
                        <li><a href="">美甲</a><span>|</span></li>
                        <li><a href="">染发剂</a></li>
                    </ul>
                    <ul>     
                        <p>牙膏、洗牙用品</p>                     
                        <li><a href="">牙膏</a><span>|</span></li>
                        <li><a href="">口气清新碰洒剂</a><span>|</span></li>
                        <li><a href="">口香水</a><span>|</span></li>
                        <li><a href="">非医用漱口水</a></li>
                    </ul>
                </div>
                <div id="N3" class="N3" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>含酒精的饮料</p>                     
                        <li><a href="">烧酒</a><span>|</span></li>
                        <li><a href="">葡萄酒</a><span>|</span></li>
                        <li><a href="">清酒</a><span>|</span></li>
                        <li><a href="">米酒</a><span>|</span></li>
                        <li><a href="">果酒</a><span>|</span></li>
                        <li><a href="">白兰地</a><span>|</span></li>
                        <li><a href="">威士忌</a><span>|</span></li>
                        <li><a href="">朗姆酒</a></li>
                    </ul>                        
                </div>
                <div id="N4" class="N4" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>肉类</p>                     
                        <li><a href="">肉</a><span>|</span></li>
                        <li><a href="">肉干</a><span>|</span></li>
                        <li><a href="">猪肉</a><span>|</span></li>
                        <li><a href="">肉冻</a><span>|</span></li>
                        <li><a href="">火腿</a><span>|</span></li>
                        <li><a href="">香肠</a><span>|</span></li>
                        <li><a href="">板鸭</a><span>|</span></li>
                        <li><a href="">熏肉</a><span>|</span></li>
                        <li><a href="">腌腊肉</a><span>|</span></li>
                        <li><a href="">羊肉</a></li>
                    </ul>
                    <ul>     
                        <p>非活水产品</p>                     
                        <li><a href="">鱼(非活的)</a><span>|</span></li>
                        <li><a href="">鱼制食品</a><span>|</span></li>
                        <li><a href="">虾</a><span>|</span></li>
                        <li><a href="">龙虾</a><span>|</span></li>
                        <li><a href="">贝壳类动物</a><span>|</span></li>
                        <li><a href="">海参</a><span>|</span></li>
                        <li><a href="">海蛰皮</a><span>|</span></li>
                        <li><a href="">海米</a></li>
                    </ul>
                    <ul>     
                        <p>奶及乳制品</p>                     
                        <li><a href="">牛奶</a><span>|</span></li>
                        <li><a href="">豆奶</a><span>|</span></li>
                        <li><a href="">奶油</a><span>|</span></li>
                        <li><a href="">奶酪</a><span>|</span></li>
                        <li><a href="">酸奶</a><span>|</span></li>
                        <li><a href="">奶昔</a><span>|</span></li>
                        <li><a href="">奶粉</a><span>|</span></li>
                        <li><a href="">奶茶</a></li>
                    </ul>
                    <ul>     
                        <p>腌制食品</p>                     
                        <li><a href="">芝麻酱</a><span>|</span></li>
                        <li><a href="">果酱</a><span>|</span></li>
                        <li><a href="">番茄酱</a><span>|</span></li>
                        <li><a href="">豆瓣酱</a><span>|</span></li>
                        <li><a href="">甜面酱</a></li>
                    </ul>
                    <ul>     
                        <p>腌制、干制蔬菜</p>                     
                        <li><a href="">腐乳</a><span>|</span></li>
                        <li><a href="">酱菜</a><span>|</span></li>
                        <li><a href="">五香萝卜</a><span>|</span></li>
                        <li><a href="">泡菜</a></li>
                    </ul>
                    <ul>     
                        <p>罐头食品</p>                     
                        <li><a href="">罐装鱼</a><span>|</span></li>
                        <li><a href="">罐装水果</a><span>|</span></li>
                        <li><a href="">肉罐头</a><span>|</span></li>
                        <li><a href="">蔬菜罐头</a><span>|</span></li>
                        <li><a href="">水产罐头</a></li>
                    </ul>
                    <ul>     
                        <p>食用油脂</p>                     
                        <li><a href="">食用菜油</a><span>|</span></li>
                        <li><a href="">食用油</a><span>|</span></li>
                        <li><a href="">玉米油</a><span>|</span></li>
                        <li><a href="">芝麻油</a><span>|</span></li>
                        <li><a href="">食用橄榄油</a><span>|</span></li>
                        <li><a href="">食用果仁油</a></li>
                    </ul>
                </div>
                <div id="N5"  class="N5" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>咖啡、可可</p>                     
                        <li><a href="">咖啡</a><span>|</span></li>
                        <li><a href="">可可</a><span>|</span></li>
                        <li><a href="">巧克力</a><span>|</span></li>
                        <li><a href="">巧克力饮料</a><span>|</span></li>
                        <li><a href="">咖啡饮料</a><span>|</span></li>
                        <li><a href="">可可饮料</a><span>|</span></li>
                        <li><a href="">咖啡调味香料</a></li>
                    </ul>
                    <ul>     
                        <p>茶叶</p>                     
                        <li><a href="">茶</a><span>|</span></li>
                        <li><a href="">冰茶</a><span>|</span></li>
                        <li><a href="">茶饮料</a><span>|</span></li>
                        <li><a href="">花或叶</a><span>|</span></li>
                        <li><a href="">茶叶代用品</a></li>
                    </ul>
                     <ul>     
                        <p>糖</p>                     
                        <li><a href="">糖</a><span>|</span></li>
                        <li><a href="">红糖</a><span>|</span></li>
                        <li><a href="">冰糖</a><span>|</span></li>
                        <li><a href="">方糖</a><span>|</span></li>
                        <li><a href="">天然增甜剂</a></li>
                    </ul>
                    <ul>     
                        <p>面包、糕点</p>                     
                        <li><a href="">面包</a><span>|</span></li>
                        <li><a href="">杏仁糊</a><span>|</span></li>
                        <li><a href="">糕点</a><span>|</span></li>
                        <li><a href="">蛋糕</a><span>|</span></li>
                        <li><a href="">饼干</a><span>|</span></li>
                        <li><a href="">甜食</a><span>|</span></li>
                        <li><a href="">布丁</a><span>|</span></li>
                        <li><a href="">三明治</a><span>|</span></li>
                        <li><a href="">燕麦食品</a></li>
                    </ul>
                    <ul>     
                        <p>方便食品</p>                     
                        <li><a href="">饺子</a><span>|</span></li>
                        <li><a href="">方便米饭</a><span>|</span></li>
                        <li><a href="">元宵</a><span>|</span></li>
                        <li><a href="">粽子</a><span>|</span></li>
                        <li><a href="">粥</a><span>|</span></li>
                        <li><a href="">寿司</a><span>|</span></li>
                        <li><a href="">馅饼</a></li>
                    </ul>
                    <ul>     
                        <p>蜂蜜、糖浆</p>                     
                        <li><a href="">食用型糖蜜</a><span>|</span></li>
                        <li><a href="">枇杷膏</a><span>|</span></li>
                        <li><a href="">燕窝梨膏</a><span>|</span></li>
                        <li><a href="">秋梨膏</a><span>|</span></li>
                        <li><a href="">蜂王膏</a><span>|</span></li>
                        <li><a href="">蜂蜜</a></li>
                    </ul>
                </div>
                <div id="N6" class="N6" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>家具</p>                     
                        <li><a href="">文件柜</a><span>|</span></li>
                        <li><a href="">婴儿摇床</a><span>|</span></li>
                        <li><a href="">床架</a><span>|</span></li>
                        <li><a href="">椅子</a><span>|</span></li>
                        <li><a href="">桌子</a><span>|</span></li>
                        <li><a href="">床垫</a><span>|</span></li>
                        <li><a href="">长沙发</a><span>|</span></li>
                        <li><a href="">梳妆台</a><span>|</span></li>
                        <li><a href="">屏风</a></li>
                    </ul>
                    <ul>     
                        <p>非金属容器</p>                     
                        <li><a href="">葡萄酒用桶</a><span>|</span></li>
                        <li><a href="">鱼蓝</a><span>|</span></li>
                        <li><a href="">非金属桶</a><span>|</span></li>
                        <li><a href="">存储和运输用非金属容器</a><span>|</span></li>
                        <li><a href="">非金属箱</a></li>
                    </ul>
                     <ul>     
                        <p>镜子，画框及部件</p>                     
                        <li><a href="">镜子</a><span>|</span></li>
                        <li><a href="">手持镜子</a><span>|</span></li>
                        <li><a href="">相框边条</a></li>
                    </ul>
                    <ul>     
                        <p>竹木工艺品</p>                     
                        <li><a href="">个人用扇</a><span>|</span></li>
                        <li><a href="">藤编制品</a><span>|</span></li>
                        <li><a href="">竹帘</a><span>|</span></li>
                        <li><a href="">草编织物</a><span>|</span></li>
                        <li><a href="">柳条制品</a></li>
                    </ul>
                    <ul>     
                        <p>角、牙制品</p>                     
                        <li><a href="">黄琥珀</a><span>|</span></li>
                        <li><a href="">动物标本</a><span>|</span></li>
                        <li><a href="">未加工或半加工动物角</a><span>|</span></li>
                        <li><a href="">装饰珠帘</a><span>|</span></li>
                        <li><a href="">风铃</a></li>
                    </ul>
                    <ul>     
                        <p>非金属家具附件</p>                     
                        <li><a href="">非金属挂衣钩</a><span>|</span></li>
                        <li><a href="">木制家具隔板</a><span>|</span></li>
                        <li><a href="">桌面</a><span>|</span></li>
                        <li><a href="">家具门</a><span>|</span></li>
                        <li><a href="">球形非金属把手</a></li>
                    </ul>
                    <ul>     
                        <p>垫枕</p>                     
                        <li><a href="">软垫</a><span>|</span></li>
                        <li><a href="">枕头</a><span>|</span></li>
                        <li><a href="">草垫</a><span>|</span></li>
                        <li><a href="">婴儿游戏围栏用垫</a><span>|</span></li>
                        <li><a href="">野营用睡垫</a></li>
                    </ul>
                    <ul>     
                        <p>非金属门装置</p>                     
                        <li><a href="">窗帘环</a><span>|</span></li>
                        <li><a href="">非金属合页</a><span>|</span></li>
                        <li><a href="">室内百叶帘</a><span>|</span></li>
                        <li><a href="">窗帘轨</a><span>|</span></li>
                        <li><a href="">窗帘杆</a></li>
                    </ul>
                </div>
                <div id="N7" class="N7" style="display:none" onmouseover="ShowDiv(this)" onmouseout="ClearDiv(this)">
                    <ul>     
                        <p>药品</p>                     
                        <li><a href="">消毒剂</a><span>|</span></li>
                        <li><a href="">卫生消毒剂</a><span>|</span></li>
                        <li><a href="">放射性药品</a><span>|</span></li>
                        <li><a href="">冻疮制剂</a><span>|</span></li>
                        <li><a href="">眼药水</a><span>|</span></li>
                        <li><a href="">药酒</a><span>|</span></li>
                        <li><a href="">胶丸</a></li>
                    </ul>
                    <ul>     
                        <p>营养品</p>                     
                        <li><a href="">医用营养品</a><span>|</span></li>
                        <li><a href="">医用营养饮料</a><span>|</span></li>
                        <li><a href="">婴儿食品</a></li>
                    </ul>
                     <ul>     
                        <p>净化制剂</p>                     
                        <li><a href="">漂白粉</a><span>|</span></li>
                        <li><a href="">厕所除臭剂</a><span>|</span></li>
                        <li><a href="">冰箱除臭剂</a><span>|</span></li>
                        <li><a href="">空气净化剂</a></li>
                    </ul>
                    <ul>     
                        <p>杀虫剂</p>                     
                        <li><a href="">卫生球</a><span>|</span></li>
                        <li><a href="">蚊香</a><span>|</span></li>
                        <li><a href="">捕苍蝇用粘胶</a><span>|</span></li>
                        <li><a href="">防蛀剂</a><span>|</span></li>
                        <li><a href="">鼠药</a><span>|</span></li>
                        <li><a href="">除草剂</a><span>|</span></li>
                        <li><a href="">杀虫剂</a></li>

                    </ul>
                </div>
            </div>
            <!--Js展示内容结束-->
        </div>  
    </div>
    <div class="latest_developments">
      <p>最新商标提交动态</p>
      <li><span>18分钟前</span> 用户156****1110 商标名称：捕***普通商标注...</li>
      <li><span>20分钟前</span> 用户137****2308 商标设计：捕***普通商标注...</li>
    </div>
    <div class="registration_process">
    	<div class="title">商标注册流程</div>
    	<p><span>商标查询</span><span>确定方案</span><span>递交申请</span><span>受理通知书</span><span>初审公告</span><span>商标证书</span></p>
      <img alt="triangle_bg" src="images/brand_Register/triangle.gif" />
     	<ul class="first">
        	<li>多平台多方位查询</li>
          <li>一对一顾问服务</li>
          <li>极速反馈结果</li>
        </ul>
        <ul class="second">
        	<li>量身定制</li>
          <li>多元化</li>
          <li>商标解决方案</li>
        </ul>
        <ul>
        	<li>一小时递交商标申请文件，当天下发商标回执，第二工作日拿到申请号</li>
        </ul>
        <ul>
        	<li>两个月左右下发受理通知书，纸质文件邮寄</li>
        </ul>
        <ul>
        	<li>初审公告商标下发之后有三个月公示期，结束之后下发证书</li>
        </ul>
        <ul>
        	<li>13个月左右证书下发</li>
        </ul>
    </div>
    <div class="data_needed">
    	<div class="title">商标申请所需要的资料</div>
      <div class="company_name">
        <div class="name_box"><p>公司名下</p></div><br />
        <ul>
          <li>公司营业执照副本扫描件</li>
          <li>商标清晰图样</li>
          <li>申请书（知孚知识产权代准备）</li>
          <li>委托书（知孚知识产权代准备）</li>
        </ul>
      </div>
      <div class="person_name">
        <div class="name_box"><p>个人名下</p></div><br />
        <ul>
          <li>公司营业执照副本扫描件</li>
          <li>商标清晰图样</li>
          <li>申请书（知孚知识产权代准备）</li>
          <li>委托书（知孚知识产权代准备）</li>
        </ul>
      </div>
    </div>
    <div class="registration_service">
    	<div class="title">知孚·商标注册服务</div>
      <div class="service_pic"></div>
      <ul>
      	<li>商标免费查询分析</li>
        <li>一分钟递交商标注册申请</li>
        <li>递交当天下发回执，第二工作日下发商标注册申请号</li>
        <li>100%下发商标注册申请受理通知书</li>
        <li>申请过程中及时跟进，文件邮寄客户</li>
        <li>建立商标检测数据库，终身免费检测</li>
        <li>免费提供闲置商标转让平台</li>
      </ul>
    </div>
    <div class="submit_application">
    	<img alt="早一点提交，早一点实现您的品牌梦" src="images/brand_Register/submit_text.gif" style="padding-top:30px" />
    	<form action="${pageContext.request.contextPath}/insertDemand.action" method="post" enctype="multipart/form-data">
      	<textarea class="demand" name="need" placeholder="填写您所需商标需求"></textarea><br />
        <input type="text" name="bc" placeholder="商标类别" />
        <input type="text" name="level" placeholder="普通/担保" /><br />
        <input type="text"  name="linkman" placeholder="联系人" />
        <input type="text"  name="tel" placeholder="联系电话" /><br />
        <input type="text" name="qq" placeholder="QQ/微信" />
        <input type="text" name="email" placeholder="邮箱" /><br />
        <input type="submit" class="submit" value="立即提交"></input>
      </form>
    </div>
   </div>
<!--下方-->
<div id="footer">
  <ul class="upper">
    <li><span>品质服务</span><br />一对一，服务贴心周到</li>
    <li><span>全程跟踪</span><br />随时沟通客户，助力通过</li>
    <li><span>多平台保障</span><br />操作简单方便，应答快捷</li>
    <li><span>管理软件支持</span><br />随时随地，轻松管理</li>
  </ul>
  <div class="lower">
    <ul class="purchase">
      <p>购买指南</p><br />
      <li><a href="#">如何注册</a></li>
      <li><a href="#">购买流程</a></li>
      <li><a href="#">商品咨询</a></li>
    </ul>
    <ul class="right">
      <p>知识产权与知识</p><br />
      <li><a href="#">版权登记知识</a></li>
      <li><a href="#">专利申请知识</a></li>
      <li><a href="#">商标注册知识</a></li>
    </ul>
    <ul class="safety">
      <p>安全服务</p><br />
      <li><a href="#">如何设置密码</a></li>
      <li><a href="#">如何绑定账号</a></li>
      <li><a href="#">服务条款</a></li>
    </ul>
    <ul class="help">
      <p>帮助中心</p><br />
      <li><a href="#">在线业务办理</a></li>
      <li><a href="#">顾问信息展示</a></li>
      <li><a href="#">业务节点信息</a></li>
    </ul>
    <div class="service">
      <h1>免费服务热线</h1>
      <h2>17324913630 17324923630</h2>
      <h3><span>服务时间</span> 0:00-24:00 </h3>
    </div>
  </div>
</div>
  <!--底部-->
  <div id="botoom">
  	<div class="relatives">
    	<a href="#">关于我们</a> |
      <a href="#">联系我们</a> |
      <a href="#">问题反馈</a> |
      <a href="#">友情链接</a>
    </div>
  </div>
</body>
</html>