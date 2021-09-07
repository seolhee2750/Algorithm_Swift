// BOJ #2884 알람 시계

let time = readLine()!.split(separator: " ").map({Int(String($0))!})

if time[1] >= 45 {
    print(time[0], time[1] - 45)
}
else {
    if time[0] == 0 { print(23, 60 - (45 - time[1])) }
    else { print(time[0] - 1, 60 - (45 - time[1])) }
}
