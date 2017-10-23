<html>
    <head>
        <meta charset="utf-8">
        <title>{{imp[0]}} - {{imp[1]}}</title>
        <link rel="stylesheet" href="/views/acme/css/bootstrap.min.css">
        <link rel="stylesheet" href="/views/acme/css/theme.css">
        <link rel="stylesheet" href="/views/acme/css/bootstrap-reset.css">
        <link rel="stylesheet" href="/views/acme/css/style.css">
        <link rel="stylesheet" href="/views/acme/css/style-responsive.css">
        <link rel="stylesheet" href="/views/acme/css/plus.css">
        <script src="/views/acme/js/jquery.min.js"></script>
        <script src="/views/acme/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.7/styles/default.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.7/highlight.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>
        <link rel="stylesheet" href="/views/yousoro/css/awesome/font-awesome.min.css">
        <script type="text/x-mathjax-config">MathJax.Hub.Config({tex2jax: {inlineMath: [['[math]', '[/math]']]}});</script>
        <script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_CHTML"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <style>{{!imp[4]}}</style>
        <script>{{!imp[5]}}</script>
        <script>
            function folding(num) {
                var fol = document.getElementById('folding_' + num);
                if(fol.style.display == 'inline-block' || fol.style.display == 'block') {
                    fol.style.display = 'none';
                } else {
                    if(num % 3 == 0) {
                        fol.style.display = 'block';
                    } else {
                        fol.style.display = 'inline-block';
                    }
                }
            }
        </script>
    </head>
    <body>
        <header class="head-section">
            <div class="navbar navbar-default navbar-static-top container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span></button>
                        <a class="navbar-brand" href="/">
                            {{imp[1]}}
                        </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li id="right-search">
                            <form method="post" action="/search" id="searchform" role="search">
                                <input style="display: inline-block;" class="form-control search" type="search" name="search" placeholder="Search" id="searchInput" autocomplete="off">
                            </form>                
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover="dropdown" data-toggle="dropdown" href="javascript:void(0);">
                                <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                <span id="mobile">도구</span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul aria-labelledby="" role="menu" class="dropdown-menu">
                                <li id="t-bell">
                                    <a href="특수:필요한문서">
                                        <i class="fa fa-bell" aria-hidden="true"></i>
                                        작성 필요
                                    </a>
                                </li>
                            </ul>
                        </li>  
                        <li id="pt-login">
                            <a href="">
                                <i class="fa fa-sign-in" aria-hidden="true"></i>
                                <span id="mobile">로그인</span>
                            </a>
                        </li>                
                    </ul>
                </div>
            </div>
        </header>
        <div class="breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-sm-4">
                        <h1>
                            {{imp[0]}}
                            % if(not imp[6] == 0):
                                <sub>{{imp[6]}}</sub>
                            % end
                        </h1>
                    </div>
                    % if(not menu == 0):
                        <div class="col-lg-8 col-sm-8">
                            <ol class="breadcrumb pull-right">
                                % for sub_d in menu:
                                    % if(sub_d[1] == 1):
                                        <a class="menu-item" href="/{{sub_d[0]}}" id="open">토론</a>
                                    % elif(sub_d[1] == 0):
                                        <a class="menu-item" href="/{{sub_d[0]}}">토론</a>
                                    % else:
                                        <a class="menu-item" href="/{{sub_d[0]}}">{{sub_d[1]}}</a>
                                    % end
                                % end
                            </ol>
                        </div>
                    % end
                </div>
            </div>
        </div>
        <section id="body">
            <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1 mar-b-30">
                            {{!data}}
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="scroll-buttons">
            <a class="scroll-toc" href="#toc">
                <i class="fa fa-list-alt" aria-hidden="true"></i>
            </a>
            <a class="scroll-button" href="#">
                <i class="fa fa-arrow-up" aria-hidden="true"></i>
            </a>
            <a class="scroll-bottom" href="#footer">
                <i class="fa fa-arrow-down" aria-hidden="true"></i>
            </a>
        </div>
        <footer class="footer-small" id="footer">
            <div class="container">
                <div class="row">
                    <div class="copyright">
                        {{!imp[2]}}
                        <a href="https://shapebootstrap.net">
                            <img style="margin-right: 10px; margin-top:5px; margin-bottom: 20px;" class="pull-right" src="https://shapebootstrap.net/templates/default/images/presets/preset1/logo.png">
                        </a>    
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>