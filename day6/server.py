from socket import *

# 创建套接字
udp_socket = socket(AF_INET, SOCK_DGRAM)

# 绑定地址
udp_socket.bind(("0.0.0.0", 8888))

# 先收后发  参数： 每次最多接收多少字节
data, addr = udp_socket.recvfrom(1024)
print(addr, data.decode())  # 字节byte改成字符

udp_socket.sendto(b"thanks",addr) # 回复

udp_socket.close()


