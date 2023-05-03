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

