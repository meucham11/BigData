# 아이템매니아

install.packages("selectr")
install.packages("httr")

library(rvest)
library(selectr)
library(httr)
library(XML)
rm(list=ls())
### 로그인
login="http://www.itemmania.com/portal/user/p_login_form.html"
pgsession<-html_session(login)
(pgform=html_form(pgsession))

filled_form=set_values(pgform[[2]], user_id="meucham1", user_password="zbqmWkd11!@#")


##form 생성
fake_submit_button <- list(name = NULL,
                           type = "submit",
                           value = '로그인',
                           checked = NULL,
                           disabled = NULL,
                           readonly = NULL,
                           required = FALSE)
attr(fake_submit_button, "class") <- "input"
filled_form[["fields"]][["submit"]] <- fake_submit_button



#제출
sell_page=submit_form(pgsession, filled_form)
sell_page
read_html(sell_page) %>% print(500)


#홈으로
home='http://www.itemmania.com/'
home_page<-jump_to(pgsession, home)
home_page %>% html_nodes('a href')
---------------------------------
read_html(sell_page) %>% print(5000)


sell_url="https://trade.itemmania.com/default.html?returnUrl="



---------

  
#희망
*****************
library(httr)
library(XML)

handle <- handle("https://www.itemmania.com") 
path   <- "portal/user/login_form_ok.php"

# fields found in the login form.
login <- list(
  user_id = "meucham1"
  ,user_password  = "zbqmWkd11!@#"
  ,amember_redirect_url = 
    "http://trade.itemmania.com/index.html"
)

response <- POST(handle = handle, path = path, body = login)
read_html(response) %>% print(2000)

pop="https://www.myotp.co.kr/partner/comm/otpJoinReq.jsp?tr_cert=IMIO1002001"
sell_page2<-jump_to(pop, sell_url)




*********
  
url="http://trade.itemmania.com/sell/view.html?id=2019040910972143&pinit=&continue=YTozMDp7czo5OiJnYW1lX2NvZGUiO3M6MjoiNjIiO3M6MTE6InNlcnZlcl9jb2RlIjtzOjQ6IjI0MjYiO3M6OToiZ2FtZV9uYW1lIjtzOjI0OiLtgazroIjsnbTsp4DslYTsvIDsnbTrk5wiO3M6MTE6InNlcnZlcl9uYW1lIjtzOjU6ImhhcHB5IjtzOjEyOiJzZWFyY2hfZ29vZHMiO3M6NDoiaXRlbSI7czoxMToic2VhcmNoX3dvcmQiO047czo0OiJ0eXBlIjtzOjQ6InNlbGwiO3M6MTI6InNlYXJjaF9vcmRlciI7czoxOiIyIjtzOjE0OiJzZWFyY2hfcmVmZXJlciI7czoxNjoibGlzdF9zZWFyY2guaHRtbCI7czoxMToidHJhZGVfc3RhdGUiO3M6MToiMSI7czo4OiJyZWdfdGltZSI7czoxOiIxIjtzOjExOiJjcmVkaXRfdHlwZSI7czoxOiIxIjtzOjEwOiJnb29kc190eXBlIjtzOjE6IjEiO3M6NjoiY29tcGVuIjtOO3M6NzoiZGlzY29udCI7TjtzOjc6Im92ZXJsYXAiO047czo5OiJleGNlbGxlbnQiO047czo3OiJhbW91bnQxIjtzOjE6IjEiO3M6NzoiYW1vdW50MiI7czo4OiI5OTk5OTk5OSI7czo3OiJhbW91bnQzIjtzOjE6IjEiO3M6NzoiYW1vdW50NCI7czo4OiI5OTk5OTk5OSI7czoxMjoic2VhcmNoX3R5cGUxIjtOO3M6MTI6InNlYXJjaF90eXBlMiI7TjtzOjE1OiJtb25leV9saXN0X3Jvd3MiO047czoxMzoiZ2VuX2xpc3Rfcm93cyI7TjtzOjE2OiJzcmNoX2l0ZW1fZGVwdGgxIjtOO3M6MTY6InNyY2hfaXRlbV9kZXB0aDIiO047czoxNjoic3JjaF9pdGVtX2RlcHRoMyI7TjtzOjE2OiJzcmNoX2l0ZW1fZGVwdGg0IjtOO3M6OToiYkxpbmVhZ2VNIjtiOjA7fQ=="
read_html(url) %>% print(5000)
summary=html_nodes(url,"td")

*






