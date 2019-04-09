# 내가 원하는 아이템 최처가 알리미

install.packages("selectr")
install.packages("httr")

library(rvest)
library(selectr)
library(httr)

#검색어 입력 ex)큐브 추천
what="큐브추천"

#네이버 지식인 검색창으로 들어간다.
url<-paste0("https://kin.naver.com/search/list.nhn?query=",what)
nv<-read_html(url)



setwd("~/z")
