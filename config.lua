--[[

Copyright (c) 2016 xsec.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THEq
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

]]

-- WAF config file, enable = "on", disable = "off"

local _M = {
    -- waf status
    config_waf_enable = "on",
    -- log dir
    config_log_dir = "/tmp/waf_logs",
    -- rule setting
    config_rule_dir = "/usr/local/openresty/nginx/conf/x-waf/rules",
    -- enable/disable white url
    config_white_url_check = "on",
    -- enable/disable white ip
    config_white_ip_check = "on",
    -- enable/disable block ip
    config_black_ip_check = "on",
    -- enable/disable url filtering
    config_url_check = "on",
    -- enalbe/disable url args filtering
    config_url_args_check = "on",
    -- enable/disable user agent filtering
    config_user_agent_check = "on",
    -- enable/disable cookie deny filtering
    config_cookie_check = "on",
    -- enable/disable cc filtering
    config_cc_check = "on",
    -- cc rate the xxx of xxx seconds
    config_cc_rate = "10/60",
    -- enable/disable post filtering
    config_post_check = "on",
    -- config waf output redirect/html/jinghuashuiyue
    config_waf_model = "html",
    -- if config_waf_output ,setting url
    config_waf_redirect_url = "http://xsec.io",
    config_expire_time = 600,
    config_output_html=[[
    <html lang="zh-cn">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="data-spm" content="a3c0e"/>

        <title>405</title>
        
        <style>
            html, body, div, a, h2, p { margin: 0; padding: 0; font-family: 微软雅黑; }
            a { text-decoration: none; color: #3b6ea3;  }
            .container { width: 1000px; margin: auto; color: #696969; }            
            
            .header { padding: 50px 0; }
            .header .message { height: 36px; padding-left: 120px; background: url(https://errors.aliyun.com/images/TB1TpamHpXXXXaJXXXXeB7nYVXX-104-162.png) no-repeat 0 -128px; line-height: 36px; }
            
            .main { padding: 50px 0; background: #f4f5f7; }
            .main img { position: relative; left: 120px; }
            
            .footer { margin-top: 30px; text-align: right; }
            .footer a { padding: 8px 30px; border-radius: 10px; border: 1px solid #4babec; }
            .footer a:hover { opacity: .8; }
            
            .alert-shadow { display: none; position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: #999; opacity: .5; }
            .alert { display: none; position: absolute; top: 200px; left: 50%; width: 600px; margin-left: -300px; padding-bottom: 25px; border: 1px solid #ddd; box-shadow: 0 2px 2px 1px rgba(0, 0, 0, .1); background: #fff; font-size: 14px; color: #696969; }
            .alert h2 {  margin: 0 2px; padding: 10px 15px 5px 15px; font-size: 14px; font-weight: normal; border-bottom: 1px solid #ddd; }
            .alert a { display: block; position: absolute; right: 10px; top: 8px; width: 30px; height: 20px; text-align: center; }
            .alert p {  padding: 20px 15px; }
        </style>

    </head>
        
    <body data-spm="7663354">
        <div data-spm="1998410538">
            <div class="header">
                <div class="container">
                    <div class="message">很抱歉，由于您访问的URL有可能对网站造成安全威胁，您的访问被阻断。</div>
					
                </div>
            </div>
            <div class="main">
                <div class="container">
                    <img src="https://errors.aliyun.com/images/TB15QGaHpXXXXXOaXXXXia39XXX-660-117.png" />
                </div>
            </div>
            
        </div>
    </body>
</html>
    ]],
}

return _M
