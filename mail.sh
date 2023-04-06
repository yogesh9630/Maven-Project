#!/bin/bash

# Set the SMTP server parameters
SMTP_SERVER="smtp.gmail.com"
SMTP_PORT=587
SMTP_USER="yogesh93400@gmail.com"
SMTP_PASSWORD="xbmsdpewmvtpyplo"
SMTP_FROM="yogesh93400@gmail.com"
SMTP_TO="yogeshyadav2202@gmail.com"
SUBJECT="Test email"
BODY="This is a test email sent from a shell script."

# Send the email using sendemail
sendemail -s $SMTP_SERVER \
          -o message-content-type=html -o tls=yes \
          -a login \
          -xu $SMTP_USER \
          -xp $SMTP_PASSWORD \
          -f $SMTP_FROM \
          -t $SMTP_TO \
          -u "$SUBJECT" \
          -m "$BODY"
