from socket import *

# 访问服务器的地址
ADDR = ("127.0.0.1", 8888)

udp_socket = socket(AF_INET, SOCK_DGRAM)

# 输入内容发送
msg = input('----')

udp_socket.sendto(msg.encode(), ADDR)

# 接收服务器发送的内容
data, addr = udp_socket.recvfrom(1024)
print(data.decode())

udp_socket.close()

