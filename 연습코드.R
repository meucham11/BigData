install.packages("selectr")
install.packages("httr")

library(rvest)
library(selectr)
library(httr)

#검색어 입력 ex)큐브 추천
what="큐브 추천"

#네이버 지식인 검
url<-"https://news.naver.com/main/hotissue/read.nhn?mid=hot&sid1=100&cid=1079165&iid=2975770&oid=001&aid=0010571037&ptype=052"
nv<-read_html(url)
(nvns<-html_nodes(nv, xpath='//*[@id="articleTitle"]'))

(title<-html_text(nvns))
(class<-html_attr(nvns, "class"))

#table 긁어오기
nvns가 테이블형식이라면
html_table(nvns)[[1]]


url<-"http://news.naver.com/main/read.nhn?mode=LSD&mid=shm&sid1=102&oid=437&aid=0000165410"
dat<-GET(url)   # html 문서를 가져온다. F12 눌렀을 때 나오는 것 통째로
content(dat)    # 가져온 html에 대해 내용을 추출

body<-list(sent="아래와같은방식으로API를사용할수있으며,호출건수에대해서별도의제한은없으나,1회 호출에200글자로글자수를제한하고있다.")
res<-PUT(url='http://35.201.156.140:8080/spacing', body=body)

install.packages("KoSpacing")
library(KoSpacing)


install.packages("RSelenium")
library(RSelenium)
pJS <- wdman::phantomjs(port = 4567L)
remDr <- remoteDriver(port = 4567L, browserName = 'phantomjs')
remDr$open()
remDr$navigate("http://www.naver.com")
remDr$getTitle()[[1]]

