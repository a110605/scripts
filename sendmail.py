#!/usr/bin/python
#coding:utf-8

import smtplib
#你要寫的內容
info = ' '
info += ('\n'+u'您好，這是「*****」發出的例行預警通知信，請勿回信'+'\n').encode('utf-8')
info += ('\n'+u'因資訊安全，請至(http://******.nchu-cm.com/)， 登入後觀看預警內容'+'\n').encode('utf-8')
  
#寄件人的信箱，通常自己去申請個GMAIL信箱即可
gmail_user = 'a1106052000@gmail.com'
gmail_pwd = 'XXXX'
#這是GMAIL的SMTP伺服器，如果你有找到別的可以用的也可以換掉
smtpserver = smtplib.SMTP("smtp.gmail.com",587)
smtpserver.ehlo()
smtpserver.starttls()
smtpserver.ehlo()
#登入系統
smtpserver.login(gmail_user, gmail_pwd)
   
#寄件人資訊
fromaddr = "a1106052000@gmail.com"
#收件人列表，格式為list即可
toaddrs = ['a1106052000@gmail.com']
    
#設定主旨與寄件資訊
msg = ("From: %s\r\nTo: %s\r\nSubject: %s\r\n" % (fromaddr, ", ".join(toaddrs), u'即時預警通知')).encode('utf-8')
smtpserver.sendmail(fromaddr, toaddrs, msg+info)
#記得要登出
smtpserver.quit()
