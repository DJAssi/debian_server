#!/bin/bash
mkdir /root/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEAi37hgs5X9h+YbCecKmSYe2E4pRRFCWPTA2xL9oVPRXp5q9t9mMOkEMxSVWPsKhPg4H71hG4NkRF1+lTkXhCbCfvXyyJPmwBrBtIO5b8+DstaVvnQOcQR8GaOVOOk15xi3XxPUo35JoOCU0jNLmk9tXoWEDgw6DSfIMPj+b9EF/RSofq8h6ebydPWbU7aRcfj1L2MIcQtRlxLFV1GnFgI4uI1AAPYasHrkX+QGqgUweIgioZ9joyM3efI1wklGXrpYeydhCdXzFl0ZXTn+PvrA5/5lYHTTjMZ/z3GO3oDJDOx/YVAI/TAmvcoEX+iV0X62tvzxgTRnNy1KQ13M11CN0oWPL6gJbZ9bfZPivvjGUL43fyrzMmXRYzFh1yK867x/SmzMllHzv/0USiWLu3kDVj9zdhcBZigDeV4/Es2P4regLciuwhds3TtcEAHvinzG81yltD9s7Xn9wcciIEBkrMJqtheg07eWmpafiCDan95dLtvOtONNnStpgBwipNXQNSu45X0IAsEwDlDKr4gccDSACdZC8XirHxdOxPM168MUUiuIRf7i1BgCWxoWEZ+1ox4uqw4M4MbE21+stCfd4QxzeFyYI0k77VhvT8PdQmpdFadg4HXY5sBadlK0TMYF8ep0jybHjGMMUoWJehHwBCH3QyaqnVNubs9Yp7l+5c= rsa-key-20070614 Andreas" > /root/.ssh/authorized_keys
sed -i 's/Port 22/Port 24/g' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
/etc/init.d/ssh restart
cd /root/
apt-get update
apt-get install lib32gcc1
mkdir /root/Steam
cd /root/Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
