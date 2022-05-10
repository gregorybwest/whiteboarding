def solution(S):
    return min(S.count("B"), S.count("A"), S.count("L")//2, S.count("O")//2, S.count("N"))


print(solution("BAONXXOLL")) == 1
print(solution("BAOOLLNNOLOLGBAX")) == 2
print(solution("balloon")) == 0
print(solution("SDFOIJXVOIJ")) == 0
