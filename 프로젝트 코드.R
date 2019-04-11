# 아이템매니아

library(rvest)
library(selectr)
library(httr)
library(XML)
library(stringr)
library(plyr)
library(dplyr)

####################
install.packages("RSelenium")
library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = 'localhost', 
                      port = 4445L, # 포트번호 입력 
                      browserName = "chrome") 
remDr$open() 
remDr$navigate("https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com") 
html <- remDr$getPageSource()[[1]] 
html <- read_html(html) 

id <- remDr$findElement(using="xpath", value='//*[@id="id"]') 
pw <- remDr$findElement(using="xpath", value='//*[@id=\"pw\"]') 

id$sendKeysToElement(list("")) 
pw$sendKeysToElement(list("")) 


btn <- remDr$findElement(using="xpath", value='//*[@id="frmNIDLogin"]/fieldset/input') 
# 로그인 버튼 클릭 
btn$clickElement() 