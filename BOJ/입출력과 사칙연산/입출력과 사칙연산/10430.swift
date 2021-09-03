// BOJ #10430 나머지

let num = readLine()!.split(separator: " ").map({Int(String($0))!})
print((num[0]+num[1])%num[2])
print(((num[0]%num[2]+(num[1]%num[2])))%num[2])
print((num[0]*num[1])%num[2])
print(((num[0]%num[2]*(num[1]%num[2])))%num[2])
