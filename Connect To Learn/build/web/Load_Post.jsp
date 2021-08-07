<%@page import="java.util.List"%>
<%@page import="com.ctl.entities.Post"%>
<%@page import="com.ctl.helper.ConnectionProvider"%>
<%@page import="com.ctl.dao.PostDao" %>

<div class="row">

    <%
        Thread.sleep(1000);
        PostDao pd = new PostDao(ConnectionProvider.getConnection());
        int cid1 = Integer.parseInt(request.getParameter("cid"));
        List<Post> posts;

        if (cid1 == 0) {
            posts = pd.getAllPost();
        } else {
            posts = pd.getPostByCatId(cid1);

        }
        if (posts.size() == 0) {
    %>
    <div class="container mt-3 text-center ">
        <span class="sans-serif display-3 text-primary">No post is available....<span>
                </div>

                <%
                    return;
                } else {

                    for (Post p : posts) {

                %>
                <!--change-->
                <div class="col-xs-12 col-md-4">
                    <!--change--> 
                    <div class="card  mt-3 border border-secondary"> 

                        <img class="card-img-top p-2 image1" src="blog_pics/<%= p.getpPic()%>" alt="Card image cap"  style="height: 40vh" >

                        <div class="card-body ">
                            <h4><%= p.getpTitle()%></h4>
                            <p style=" width:auto;
                               height:100px;
                               overflow:hidden;"><%=p.getpContent()%></p>
                            
                            <a id="more" href="#!"></a>
                        </div>
                        <div class="card-footer text-center primary-background sp">

                            <a class="btn btn-outline-light  btn-sm" href="#!"><i class="fa fa-thumbs-o-up"></i><span>10</span></a>
                            <a class="btn btn-outline-light  btn-sm" href="single_post.jsp?post_id=<%= p.getPid()%>">Read More...</a>
                            <a class="btn btn-outline-light btn-sm" href="#!"><i class="fa fa-commenting-o"></i><span>10</span></a>

                        </div>





                    </div>  



                </div>





                <%
                        }
                    }
                %>

                </div>
                