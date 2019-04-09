# 아이템매니아

install.packages("selectr")
install.packages("httr")

library(rvest)
library(selectr)
library(httr)
library(XML)

### 로그인
login="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=Bh2SL9Ki8Wmn6fGPvIti&redirect_uri=http%3A%2F%2Fwww.itemmania.com%2Fsocial_login%2Fnaver_callback.php&state=0e91c5a1ffbeb85d24c356e2500111c0|//www.itemmania.com/portal/user/p_login_form.html|"
pgsession<-html_session(login)
pgform=html_form(pgsession)[[1]]
filled_form<-set_values(pgform, id="meucham@naver.com", pw="zbqmWja11!@#")
submit_form(pgsession, filled_form)








# 물건 검색어
what=""

# 
url<-"http://www.itemmania.com/portal/user/p_login_form.html"
nv<-GET(url) 

login <- list(
  amember_login = "username"
  ,amember_pass  = "password"
  ,amember_redirect_url = 
    "http://subscribers.footballguys.com/myfbg/myviewprojections.php?projector=2"
)
response <- POST(handle = handle, path = path, body = login)
