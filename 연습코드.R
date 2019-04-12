네이버 로그인후 쪽지


library(rvest)
library(selectr)
library(httr)
library(XML)
library(stringr)
library(plyr)
library(dplyr)
library(RSelenium)
####################


remDr <- remoteDriver(remoteServerAddr = 'localhost', 
                      port = 4445L, # 포트번호 입력 
                      browserName = "chrome") 
remDr$open() 
remDr$navigate("http://www.itemmania.com/portal/user/p_login_form.html?returnUrl=http%3A%2F%2Fwww.itemmania.com%2Fmyroom%2F")


id <- remDr$findElement(using="xpath", value='//*[@id="user_id"]') 
pw <- remDr$findElement(using="xpath", value='//*[@id=\"user_password\"]') 

id$sendKeysToElement(list("meucham1")) 
pw$sendKeysToElement(list("zbqmWkd11!@#")) 

# 로그인 버튼 클릭 
login_btn=remDr$findElement(using="xpath",value='//*[@id="login_before"]/div[1]/img')
login_btn$clickElement()  #로그인 성공 후 마이룸으로

#팝니다 원하는 게임, 서버 접속
game_box <- remDr$findElement(using="xpath", value='//*[@id="searchGameServer"]')
game_box$sendKeysToElement(list("바람의나라")) 
game_select=remDr$findElement(using="xpath",value='//*[@id="g_gameServer"]/div[1]/ul/li[1]/span')
game_select$clickElement()
server_select=remDr$findElement(using="xpath",value='//*[@id="g_gameServer"]/div[2]/ul/li[2]')
server_select$clickElement()


#팝업창 지우기
pop_up2=remDr$findElement(using="xpath",value='//*[@id="listSearchDjb_inptDeny"]')
pop_up2$clickElement()
pop_up2=remDr$findElement(using="xpath",value='//*[@id="listSearchDjb"]/div[1]/map/area[1]')
pop_up2$clickElement()


#아이템류 선택 후 아이템 검색
