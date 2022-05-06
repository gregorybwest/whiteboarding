def solution(S):
    count = {}
    for c in S:
        count[c] = count.setdefault(c, 0)+1
    most_frequent_arrow = (max(count, key=count.get))
    return(len(S) - count[most_frequent_arrow])


print(solution(">>><")) == 1
print(solution("^vv<v")) == 2
print(solution("v>>>vv")) == 3
print(solution("<<<")) == 0
