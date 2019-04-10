네이버 로그인후 쪽지


library(rvest)
library(selectr)
library(httr)
library(XML)
library(stringr)
library(plyr)
library(dplyr)

### 로그인
login="https://nid.naver.com/nidlogin.login?url=https%3A%2F%2Fnote.naver.com"
pgsession<-html_session(login)
(pgform=html_form(pgsession))

filled_form=set_values(pgform[[1]], id="meucham", pw="zbqmWjd11!@#")


#제출
a=submit_form(pgsession, filled_form)

b=jump_to(a,note)
read_html(b)

note='https://note.naver.com/'
read_html(note) %>% print(500)



#######팬텀 js
setwd('D:\\다운로드')
phantomjs = 'D:\\다운로드\\phantomjs-2.1.1-windows\\phantomjs-2.1.1-windows\\bin'
scrape = 'D:\\다운로드\\phantomjs-2.1.1-windows\\phantomjs-2.1.1-windows\\bin\\naver.js'
exec_scrape = paste0(phantomjs, scrape)

system(exec_scrape)

batches <- read_html("techstars.html") %>%
  html_nodes(".batch")

class(batches)

batch_titles <- batches %>%
  html_nodes(".batch_class") %>%
  html_text()



#######팬텀 js2
setwd("D:\\다운로드\\phantomjs-2.1.1-windows\\phantomjs-2.1.1-windows\\bin")
system("phantomjs --version")
system("testcas1.js")
system("phantomjs ./test.js")

read_html(a)



