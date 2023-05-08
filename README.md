# Code Peer Review Templete
---
- 코더 : 노유현
- 리뷰어 : 신노아


# PRT(PeerReviewTemplate)

각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.

- [x] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
- [O] 주석을 보고 작성자의 코드가 이해되었나요?
- [x] 코드가 에러를 유발할 가능성이 있나요?
- [O] 코드 작성자가 코드를 제대로 이해하고 작성했나요? (직접 인터뷰해보기)
- [O] 코드가 간결한가요?

---

1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
   
   ```python
   
  from ColabTurtlePlus.Turtle import *
import pprint
maze = [
[0, 1, 0, 0, 0],
[0, 0, 0, 1, 0],
[0, 1, 1, 0, 0],
[0, 0, 1, 1, 0],
[0, 0, 0, 0, 0]
]

t = Turtle()
# t.shape("turtle")
# t.shapesize(3,4,2)

canvas = t.Screen()

# 터틀 그래픽 초기화
canvas.clear()

for x in range(5):
for y in range(5):
if maze[x][y] ==1:
print("미로를 찾을 수 없습니다.",t.position())
break

else:
t.goto(x,y)
maze[x][y] = 2
    print("미로를 찾았습니다.")--
    ```python


   - Code 에 대한 리뷰어의 Comment 를 남겨주세요
   작동방식에 대해 전반적으로 잘 이해하고 있음. 
   미로를 출력하는 부분에서 함께 고민해 봐야 할것 같습니다. 
   
---

# 참고 링크 및 코드 개선 여부
---

참고링크:https://codethem.tistory.com/214
시간이 조금 더 주어진다면 수월하게 완료가 가능할듯 합니다.






# Code Peer Review Templete
---
- 코더 : 백기웅
- 리뷰어 : 노유현


# PRT(PeerReviewTemplate)
---
각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.
- [O] 1.코드가 정상적으로 동작하나요?
- [O] 2.문제를 제대로 이해했나요?
- [O] 3.함수가 작동하는 방식을 잘 설명했나요?
- [O] 4.발생 가능한 에러를 찾아서 디버깅을 했나요?
- [O] 5.코드를 더 개선시켰나요?

# 리뷰 설명
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크는 '초보자를 위한 파이썬 300제'의 역순으로 단어 불러오기 [::-1]
---
```python
# 회문 만들기

def palindrome():

word = input("이름을 입력해 주세요: " ) # 단어 입력 창 만들기
reverse_word = "" # reverse_word를 '무'로 지정

# (변경전) 코드
for i in range(1,len(word)+1): # 첫번째 단어부터 끝에 있는 단어의 순서를 부여
reverse_word += word[-i] # 글씨를 역순으로 차례대로 불러온 것을 reverse_word로 지정

# (변경후) 코드
reverse_word = word[::-1] # for문과 range문을 쓰지 않고 조금 더 직관적인 코드로 변경

print("뒤집힌 단어는:",reverse_word)

if word == reverse_word:
print('입력된 단어는 회문입니다.')
else:
print('입력된 단어는 회문이 아닙니다.')
```
text입니다.

# 참고 링크 및 코드 개선 여부
---
```python
# '초보자를 위한 파이썬 300제' https://wikidocs.net/7022
# 리뷰를 통해 기존의 코드 2줄을 1줄로 변경함
