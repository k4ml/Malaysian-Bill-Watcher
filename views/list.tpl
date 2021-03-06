<!DOCTYPE html>
<html>
<head>
    <title>Malaysian Bill Watcher</title>
    <link rel="alternate" type="application/rss+xml" title="RSS feed" href="/feeds/" />
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">
    %include css
</head>
<body>
<div id='header'>
</div>
<body>
    %include facebook_js
    <div class="topbar">
        <div class="topbar-inner">
            <div class="container-fluid">
                <a class="brand" href="#">Malaysian Bill Watcher</a>
                <p class="pull-right">
                    %include search_box
                </p>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="sidebar">
            <div class="well">
                <p>This project is created to create an awareness of law enacted, by your MP's</p>
            </div>
        </div>
        <div class="content">
        <div class="container">
           <div class="row">
               <div class="span12">
               %for i in bill:
                   <div class="bill_item">
                       <h5><a href="/detail/{{i.bill_id}}/">{{i.long_name}}</a></h5>
                        Revision: {{i.year}}
                        <br>Status  : {{i.status}}</br>
                   </div>
                   <div class="separator"></div>
               %end
               <div class='pagination' id='pages'>
                  <ul>
                      %if page_no != page_list[0]:
                          <li class="prev"><a href='/?page_no={{prev_page}}'>prev</a></li>
                      %else:
                          <li class="prev disabled"><a href="#">prev</a></li>
                      %end
                      %for i in page_list:
                          %if i == page_no:
                              <li class="active"><a href="#">{{i}}</a></li>
                          %else:
                              <li><a href='/?page_no={{i}}'>{{i}}</a></li>
                          %end
                      %end
                      %if page_no != page_list[-1]:
                          <li class="next"><a href='/?page_no={{next_page}}'>next</a></li>
                      %else:
                          <li class="next disabled"><a href="#">next</a></li>
                      %end
                  </ul>
               </div>
               </div>
           </div>
        </div>
    </div>
        
</body>
</body>
</html>
