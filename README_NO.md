# Code Peer Review Templete

- 코더 :노유현
- 리뷰어 : 신노아

---

### PRT(PeerReviewTemplate)

각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.

- [X] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
- [X] 주석을 보고 작성자의 코드가 이해되었나요?
- [O] 코드가 에러를 유발할 가능성이 있나요?
- [O] 코드 작성자가 코드를 제대로 이해하고 작성했나요? (직접 인터뷰해보기)
- [O] 코드가 간결한가요?

---

### 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
#https://codethem.tistory.com/214

###Code 에 대한 리뷰어의 Comment 를 남겨주세요

#Comment: 작동방식에 대해서 전체적으로 이해하고 있으시나 마지막 출력부분에서 어려움을 겪으셨는데 시간만 조금 더 주어진다면 수월하게 완료가 가능할듯합니다. 

###Code
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

