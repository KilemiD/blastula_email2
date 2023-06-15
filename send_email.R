library(blastula)

# cred file
#create_smtp_creds_file(file = "murume",
#                       user="murume2195@outlook.com",
#                       provider = "outlook")

#generate the email object using blastula
my_email_object=render_email("tr_email.qmd")

#sending the email
smtp_send(my_email_object,
          from="murume2195@outlook.com",
          to="murume2195@outlook.com",
          subject=paste0("My first email from blastula on",
                         Sys.Date()),
          credentials = creds_file("murume"))