# Code Peer Review Templete
---
- 코더 : 정선종
- 리뷰어 : 노유현


# PRT(PeerReviewTemplate)

각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.

- [O] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
- [O] 주석을 보고 작성자의 코드가 이해되었나요?
- [O] 코드가 에러를 유발할 가능성이 있나요?
- [O] 코드 작성자가 코드를 제대로 이해하고 작성했나요? (직접 인터뷰해보기)
- [O] 코드가 간결한가요?

---

1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
   
```python
   
# Fish 클래스를 사용하여 물고기 객체를 생성
# Fish 클래스는 물고기의 이름(name)과 속도(speed)를 속성과 swim 메서드를 가짐
class Fish:
def __init__(self, name, speed):
self.name = name
self.speed = speed

# swim 메서드는 해당 물고기가 어떤 속도로 수영하는지를 나타내는 문자열을 반환
def swim(self):
return f"{self.name} is swimming at {self.speed} m/s"

# 물고기 객체의 이름과 속도를 가진 리스트인 fish_list를 생성
def fmg(fish_list):
for fish in fish_list:
yield fish.swim() #yield 키워드를 사용하여 제너레이터로 값을 전달

# fish_list에는 5마리의 물고기 객체 생성

fish_list = [Fish("Nemo", 3), Fish("Dory", 5), Fish("Marlin", 7), Fish("Bubbles", 2), Fish("Gill", 4)]

# 제너레이터를 활용하여 물고기들의 움직임 출력
print("물고기들의 움직임 (Using generator):")
fish_generator = fmg(fish_list) # fmg 함수는 입력으로 받은 fish_list에 대해 제너레이터를 생성

for movement in fish_generator:
print(movement)


# 컴프리헨션을 활용하여 물고기들의 움직임 출력

print("\n물고기들의 움직임 (Using list comprehension):")
fish_movements = [fish.swim() for fish in fish_list] #fish_list의 각 물고기 객체에 대해 swim 메서드를 호출하여 움직임을 반환
for movement in fish_movements:
print(movement)

```


#  Code 에 대한 리뷰어의 Comment 를 남겨주세요
코드는 간결하고 완벽하게 작성하셨습니다. 주석도 너무 훌륭하여 출판을 하여도 될것 같습니다. 
하나하나 코드리뷰를 상세히 해주셔서 이해가 잘 갔습니다.

# 참고 링크 및 코드 개선 여부

