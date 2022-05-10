def solution(s):
    c = s[0]
    if c.isupper():
        return "upper"
    elif c.islower():
        return "lower"
    elif c.isdigit():
        return "digit"
    else:
        return "other"


print(solution("hello")) == "lower"
print(solution("Hello")) == "upper"
print(solution("6Hello")) == "digit"
print(solution(" 6Hello")) == "other"
print(solution("? 6Hello")) == "other"
print(solution("? 6Hello")) == "other"
