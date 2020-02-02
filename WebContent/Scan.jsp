<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8"/>
		<title>读取扫描</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="renderer" content="webkit">
		
		<link rel="shortcut icon" href="https://static.clewm.net/static/images/favicon.ico" mce_href="https:/static/images/favicon.ico" type="image/x-icon">
		<link rel="canonical" href="http://cli.im/" />
		<link rel="stylesheet" href="https://static.clewm.net/cli/flatkit/assets/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://static.clewm.net/cli/flatkit/assets/styles/app.min.css?v=20191101">
		<link rel="stylesheet" href="https://static.clewm.net/cli/flatkit/assets/styles/cli_global.css?v=20191113">
		<link rel="stylesheet" href="https://static.clewm.net/cli/flatkit/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://static.clewm.net/cli/css/clicon.css?v=20180820">
		
		<script src="https://static.clewm.net/cli/js/service_text.js?v=202001292"></script>
		<script src="https://static.clewm.net/cli/js/consult.js?v=20181010"></script>
			
	    
	    <!--[if IE]>
	    	保留
	    <![endif]-->
		<script src="https://static.clewm.net/cli/js/lib/jquery191.js"></script>
		<script src="https://static.clewm.net/cli/flatkit/libs/jquery/bootstrap/dist/js/bootstrap_v3.0.js"></script>
			
		
        
      
    
	</head>
	
	<body>
		
		
    <style>
  .top-menu-solution .linkCotent {
      position: absolute;
      top: 54px;
      box-shadow:0px 2px 15px 0px rgba(0,0,0,0.15);
      border-bottom: 1px solid #e6e6e6;
      z-index: 1000;
      display: none;
  }
  
  .top-menu-solution .buildingLinks,.top-menu-solution .equipmentLinks {
      height: 270px;
  }
  .top-menu-solution .compositeLinks {
      height: 270px;
  }
  .logo_new {
      display: inline-block;
      width: 150px;
      height: 50px;
      margin-top: 2px;
      padding-top: 17px;
  }
  .logo_new img {
      height: 27px;
  }

</style>








<link rel="stylesheet" href="https://static.clewm.net/cli/css/cli_head_navigation.css?v=20191101_5"><style>
  .cli_nav .sub_nav li a svg {
    vertical-align: middle;
    width: 14px;
    height: 14px;
    position: relative;
    top: -1px;
  }
  .cli_nav .sub_nav li a svg path {
    fill: #777;
  }
  .cli_nav .sub_nav li a:hover svg path {
    fill: #4caf50;
  }

  .cli_nav .sub_nav li a.on {
    color: #4caf50;
  }

  .cli_nav .sub_nav li a.on svg path {
    fill: #4caf50;
  }

  .nav-tool-popover-scan a {
    padding: 0 14px !important;
  }

  .nav-tool-popover-scan .scan-dark,
  .nav-tool-popover-scan .scan-light {
    width: 12px;
    height: 12px;
    position: relative;
    top: -1px;
    margin-right: 4px;
  }

  .nav-tool-popover-scan .scan-text {
    font-weight: normal;
  }

  .nav-tool-popover-scan .scan-dark.on {
    display: none;
  }

  .nav-tool-popover-scan .scan-light.on {
    display: inline-block;
  }

  .nav-tool-popover-scan:hover .scan-dark {
    display: none;
  }

  .nav-tool-popover-scan:hover .scan-light {
    display: inline-block;
  }

  .nav-tool-popover-scan-new .tabIconBg {
    width: 16px;
    height: 16px;
    background-image: url(https://static.clewm.net/static/images/page-index-icon-new@2x_31527f9.png);
    background-size: 32px 32px;
    background-repeat: no-repeat;
    display: inline-block;
    display: inline-block;
    position: relative;
    top: 3px;
    margin-right: 4px;
  }

  .nav-tool-popover-scan-new:hover .newCodeBg,
  .nav-tool-popover-scan-new .on .newCodeBg {
    background-position: 0px -16px;
  }

  .nav-tool-popover-scan-new:hover .newDeqrBg,
  .nav-tool-popover-scan-new .on .newDeqrBg {
    background-position: -16px -15px;
  }

  .nav-tool-popover-scan-new:hover .scan-text  {
    color: #4caf50;
  }

  .nav-tool-popover-scan-new .newCodeBg {
    background-position: 0px 0px;

  }

  .nav-tool-popover-scan-new .newDeqrBg {
    background-position: -16px 0px;
    background-size: 30px 30px;
  }

  @media only screen and (max-width: 840px) {
  .cli_nav .sub_nav .right-nav-items {
    float: none !important;
    display: inline-block;
    white-space: nowrap;
  }
}
</style>
<div class="cli_nav nav_gray scene_mobile clearfix p-a-0">
	<ul class="sub_nav sub_mobile_nav cli_head_container clearfix">
		<li><a href="//cli.im/text" title="生成文本二维码" class="tab_sep [navigation_text]" onclick="StatisticsData(120,11)">文本</a>
		</li>
		<li><a href="//cli.im/url" title="生成网址二维码" class="tab_sep [navigation_url]" onclick="StatisticsData(120,12)">网址</a></li>
		<li><a href="//cli.im/files" title="生成文件二维码" class="tab_sep [navigation_files]" onclick="StatisticsData(120,13)">文件</a></li>
		<li><a href="//cli.im/img" title="生成图片二维码" class="tab_sep [navigation_img]" onclick="StatisticsData(120,14)">图片</a></li>
		<li><a href="//cli.im/multimedia" title="生成音视频二维码" class="tab_sep [navigation_multimedia]" onclick="StatisticsData(120,15)">音视频</a></li>
		<li><a href="//cli.im/vcard" title="名片二维码" class="tab_sep [navigation_vcard]" onclick="StatisticsData(120,16)">名片</a></li>
		<li><a href="//cli.im/weixin" title="美化微信二维码" class="tab_sep [navigation_weixin]" onclick="StatisticsData(120,17)">微信</a></li>
		<li><a href="//cli.im/tools" title="更多高级功能" class="tab_sep [navigation_tools]" onclick="StatisticsData(120,161)">更多工具</a></li>
	
	
	<div class="pull-right right-nav-items">
		<li
            class="pull-left nav-tool-popover-scan-new"
            data-container="body"
            data-toggle="popover"
            data-placement="bottom"
            data-html="html"
          ><a href="//cli.im/user/active/newcode?navigation=1" title="新建活码" class="tab_sep m-r-0 [navigation_newcode]" onclick="StatisticsData(92,18)"><svg viewBox="0 0 1024 1024" fill="currentColor" aria-hidden="true"><path d="M848 474H550V152h-76v322H176c-4.4 0-8 3.6-8 8v60c0 4.4 3.6 8 8 8h298v322h76V550h298c4.4 0 8-3.6 8-8v-60c0-4.4-3.6-8-8-8z"></path></svg> 新建活码
              </a></li><li
            class="pull-left nav-tool-popover-scan-new"
            data-container="body"
            data-toggle="popover"
            data-placement="bottom"
            data-html="html"
            data-content="<div class='common-popover-content'>通过二维码图片，快速解析内容</div>"
          style="padding: 12px 0px 8px;"
          ><a href="//cli.im/deqr" title="解码" class="tab_sep m-r-0 on" onclick="StatisticsData(1,15)"><svg viewBox="0 0 1024 1024"><path d="M928.728 469.333c17.262 0 31.272 12.772 31.272 28.51 0 15.736-14.01 28.509-31.272 28.509H95.272C78.01 526.352 64 513.579 64 497.842c0-15.737 14.01-28.509 31.272-28.509h833.456zM373.465 831.118c17.591 0 31.868 14.562 31.868 32.376 0 17.943-14.277 32.506-31.868 32.506H244.72c-76.228 0-138.052-63.062-138.052-140.687V629.84c0-17.944 14.277-32.507 31.868-32.507 17.59 0 31.868 14.563 31.868 32.507v125.473c0 41.738 33.397 75.805 74.316 75.805h128.746z m512-233.785c17.591 0 31.868 14.557 31.868 32.492v125.42c0 77.59-61.951 140.755-138.052 140.755H650.535c-17.591 0-31.868-14.556-31.868-32.492s14.277-32.492 31.868-32.492H779.28c40.919 0 74.316-34.052 74.316-75.771v-125.42c0-17.935 14.277-32.492 31.868-32.492z m-234.93-404.349c-17.591 0-31.74-14.556-31.868-32.492 0-17.936 14.277-32.492 31.868-32.492H779.28c76.101 0 138.052 63.164 138.052 140.755v125.42c0 17.935-14.277 32.492-31.868 32.492-17.59 0-31.868-14.557-31.868-32.492v-125.42c0-41.72-33.397-75.771-74.316-75.771H650.535z m-512 233.683c-17.591 0-31.868-14.433-31.868-32.376V268.817c0-77.625 61.951-140.817 138.052-140.817h128.746c17.591 0 31.868 14.563 31.868 32.506 0 17.944-14.277 32.506-31.868 32.506H244.72c-40.919 0-74.316 34.067-74.316 75.805V394.16c0 17.944-14.277 32.507-31.868 32.507z"></path></svg>
                解码
              </a></li></div></ul></div><div id="cameradialog"></div><div id="resultdialog" class="resultdialog dno"><div class="resultmsg"><table><tr><td id="resultmsg"></td></tr></table></div><div class="resultbtn"><a class="btn" id="cameracontinue">继续扫描</a><textarea id="fe_text" cols="50" rows="3" style="display:none"></textarea><a class="btn" id="cameracopy" data-clipboard-target="fe_text">复制</a><a class="btn" id="savetext">传到生成器</a></div></div><link rel="stylesheet" href="https://static.clewm.net/cli/iconfont/index.min.css?v=20191216"><link rel="stylesheet" href="https://static.clewm.net/static/css/page-deqr_dec3fcb.css"><!--[if lt IE 10]><script type="text/javascript" src="https://static.clewm.net/cli/js/lib/plug/jquery.placeholder.min.js"></script><![endif]--><script>
    var qr_create_quick = 1;
</script><script src="https://static.clewm.net/cli/js/lib/plug/jceb.msgtip.js"></script><script src="https://static.clewm.net/static/js/cli-qrcode_0212d3f.js"></script><script src="https://static.clewm.net/static/js/page-deqr_9ee985f.js"></script>


<div class="warper" id="warper"><div class="deqr_container"><h1>二维码解码器</h1><div class="deqr_main deqr-wrapper"><div class="toggle-deqr-type-tab"><div class="list-item on" data-type="__type-upload"><span>上传二维码图片</span></div><div class="list-item" data-type="__type-url"><span>输入二维码图片网址</span></div><div class="list-item" data-type="__type-scan"><span>摄像头扫描二维码</span></div></div><div class="uder-line"></div><div class="deqr-content"><input type="file" id="filedatacode" name="Filedata" accept=".gif,.jpg,.jpeg,.png,.webp" class="deqr_upload_img uploadfile" uptype="deqr"/><div class="__type-upload-content deqr-item"><div class="deqr-box"><div class="icon"><div class="deqr-icon deqr-icon-upload"></div></div><div class="title">
                            上传或拖拽图片
                        </div><div class="decoding">
                            正在解码…
                        </div></div><div class="warn-tip none"><i class="fa fa-exclamation-circle"></i><span>无法识别出该图片中的二维码内容</span></div></div><div class="none __type-url-content deqr-item"><div class="input"><input type="hidden" name="deqr" value="deqr" hidefocus=true/><input onfocus="this.select();" id="deqr_urls" name="deqr_url_input" type="text" ondragenter="return false" placeholder="请输入带二维码的图片网址" type="text"></div><div id="deqr_url_btn" class="decode-btn">
                            解&nbsp;码
                        </div><div class="warn-tip none"><i class="fa fa-exclamation-circle"></i><span>无法识别出该图片中的二维码内容</span></div></div><div class="none __type-scan-content deqr-item" id="deqrcamera"><div class="deqr-box"><div class="icon"><div class="deqr-icon deqr-icon-camera"></div></div><div class="title">
                            启用摄像头，对准二维码图片
                        </div></div><div class="warn-tip none"><i class="fa fa-exclamation-circle"></i><span></span></div></div></div><div class="deqr_loading"><a href="#" title="正在识别二维码" class="deqr_loading_img"></a></div><div class="deqr_prompt"><p class="prompt_current"></p></div><div class="deqr-result none" id="deqr_result"><div class="copy-success-tip">复制成功</div><div class="result-title">
                    解码结果
                </div><div class="result-content"><p class="result" id="deqrresult"></p><div class="operate"><span class="copy">复制</span><span class="generate">生成二维码</span></div><input id="uploaddeqr" type="hidden"/></div></div></div><div id="cameradialog none"></div><div id="resultdialog" class="resultdialog dno"><div class="resultmsg"><table><tr><td id="resultmsg"></td></tr></table></div><div class="resultbtn"><a class="btn" id="cameracontinue">继续扫描</a><textarea id="fe_text" cols="50" rows="3" style="display:none"></textarea><a class="btn" id="cameracopy" data-clipboard-target="fe_text">复制</a><a class="btn" id="savetext">关闭</a></div></div></div></div><div class="modal fade" id="htmlScanModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"><div class="modal-dialog" role="document"><div class="modal-content" style="width: 650px;"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="myModalLabel">二维码扫描</h4></div><div class="modal-body"><div class="scanner"><div class="scan-area"><div class="mark top-left"></div><div class="mark top-right"></div><div class="mark bottom-left"></div><div class="mark bottom-right"></div></div><video id="scanVideo" width="600" height="600"></video></div><div id="scan-content"></div></div><div class="modal-footer"><button type="button" class="btn btn-default btn-sm" id="copyResultBtn">复制</button><button type="button" class="btn btn-default btn-sm" id="continueToScan">继续扫码</button></div></div></div></div><div class="result-wrap none"><div class="decode-result"><div class="close-btn">×</div><div class="title">
            解码结果
        </div><div class="result-outer"><div class="result"></div></div><div class="operate"><button class="op-generate btn">生成二维码</button><button class="op-copy btn btn-green">复制</button></div><div class="tip"><i class="clifont anticon-cli-check-fill"></i><span>复制成功</span></div></div></div><script>
    window.$dynamicSetContentHeight = function() {
      var fn = function() {
        $('#warper').css(
          'min-height',
          ($(window).height() - $('.cli_head').height() - $('.cli_nav').height() - $('.footer-category-box').height() - 64).toString() + 'px'
        );
      };

      $(window).on('resize', function() {
        fn();
      });

      setTimeout(function() {
        fn();
      });
    };

    $dynamicSetContentHeight();
</script>





<script>
      var _hmt = _hmt || [];
      (function() {
        var hm = document.createElement('script');
                    hm.src = '//hm.baidu.com/hm.js?cb508e5fef81367bfa47f4ec313bf68c';        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(hm, s);
        var getCookie = function (name) {
          var arr = document.cookie.match(new RegExp('(^| )' + name + '=([^;]*)(;|$)'));
          if (arr == null) {
            return '';
          }
          return unescape(arr[2]);
        };
        var cvid = getCookie('cvid');
        if (!cvid) {
          var domain = location.hostname.split('.').slice(-2).join('.');
          hm = document.createElement('script');
          hm.src = '//user.' + domain + '/api/visitor_analysis/get_cvid';
          s = document.getElementsByTagName('script')[0];
          s.parentNode.insertBefore(hm, s);
        }
      })();
            _hmt.push(['_setUserTag', '2116', 2194356]);      _hmt.push(['_setPag̦eTag', '7035', 'even']);      _hmt.push(['_setVisitTag', '2118', 197465052]);    </script></div><script>
    $(function(){
        $('.cli_foot .qq_show').hover(function(e) {
            $('ul.qq_list').toggle();
            e.stopPropagation();
        });

        $('[data-toggle="popover"]')
            .popover({
              trigger: 'manual',
              animation: false,
            })
            .on('mouseenter', function () {
                var _this = this;
                $('.popover').remove();
                $(this).popover('show');
                $('.popover').find('.arrow').addClass('beforeNone');
                $('.popover').on('mouseleave', function () {
                    $(_this).popover('hide');
                });
            }).on('mouseleave', function () {
                var _this = this;
                setTimeout(function () {
                    if (!$('.popover:hover').length) {
                        $(_this).popover('hide');
                    }
                }, 100);
            });

              //数据统计
        function StatisticsData(fir,sec){
            $.ajax({
                async: true,
                type: "get",
                url: '/Api/ClickLog/click',
                data: {
                    'fir': fir,
                    'sec': sec
                },
                dataType: 'jsonp',
                jsonp: 'callback',
                success: function(ret) {
                }
            });
        }
    })
</script>

<script>
(function() {
    function getCookie(c_name){
        if (document.cookie.length>0) {
            c_start=document.cookie.indexOf(c_name + "=")
            if (c_start!=-1) {
                c_start=c_start + c_name.length+1
                c_end=document.cookie.indexOf(";",c_start)
                if (c_end==-1)
                c_end=document.cookie.length
                return unescape(document.cookie.substring(c_start,c_end))
            }
        }
        return ""
    }
    var managerCookie = getCookie('climanager_v2');
    if (managerCookie) {
        var info = JSON.parse(unescape(getCookie('climanager_v2')))

        if (info.manager_id == '18' || info.manager_id == '19' || info.manager_id == '20') {
            $('.foot-open-qq-btn').attr('href', info.contact_link);
            $('.foot-open-qq-btn').attr('target', '_blank');
        }
    }
    $('.foot-open-qq-btn').on('click', function() {
        StatisticsData(88,2);

        $.ajax({
            type: 'POST',
            url: '//' + USER_DOMAIN + '/api/ask/addAsk',
            xhrFields: {
                withCredentials: true
            }
        });
    })

    // 当有 “咨询”按钮 的时候，点击 “技术与服务”，就如同点击 “咨询” 这个按钮
    $('#technicalService').on('click', function(e) {
        var edition_id = 1;

        if (_capacity_info != null) {
            edition_id = _capacity_info.from_edition_id;
        }

        if (window.account && edition_id != 1) {
            var $supportEle = $('#support-wrapper-v3');

            if ($supportEle && $supportEle.length == 1) {
                e.preventDefault();
                $supportEle[0].click();
            }
        }
        
    })
})();
</script></body></html><script src="https://static.clewm.net/public/cli_analytics.js"></script>