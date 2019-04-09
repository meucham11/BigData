# 아이템매니아

install.packages("selectr")
install.packages("httr")

library(rvest)
library(selectr)
library(httr)
library(XML)

### 로그인
login="http://www.itemmania.com/portal/user/p_login_form.html"
pgsession<-html_session(login)
(pgform=html_form(pgsession))



filled_form<-set_values(pgform[[2]], user_id="meucham1", user_password="zbqmWkd11!@#")
filled_form<-set_values(pgform[[1]], 'search_game'=62,'search_game_text'="크레이지아케이드",
                        'search_server'=2426,'search_server_text'="happy",
                        'search_goods'="item")
sell_page=submit_form(pgsession, filled_form)
sell_page
sell_url="https://trade.itemmania.com/default.html?returnUrl="

sell_page2<-jump_to(pgsession, sell_url)
read_html(sell_page2) %>% print(5000)

summary<-html_nodes(sell_page2, 'div')
---------


----------



read_html(page) %>% print(10000)

#collect info on the question votes and question title
summary<-html_nodes(page, xpath='//*[@id="g_CONTENT"]/ul[3]/li[1]/div[2]/a/div/span[2]')
question<-matrix(html_text(html_nodes(summary, "div"), trim=TRUE), ncol=2, byrow = TRUE)

#find date answered, hyperlink and whether it was accepted
dateans<-html_node(summary, "span") %>% html_attr("title")
hyperlink<-html_node(summary, "div a") %>% html_attr("href")
accepted<-html_node(summary, "div") %>% html_attr("class")

#create temp results then bind to final results 
rtemp<-cbind(question, dateans, accepted, hyperlink)
results<-rbind(results, rtemp)







# 물건 검색어
what=""

# 
url<-"http://trade.itemmania.com/sell/list_search.html"
nv<-GET(url) 


