# Code Peer Review Templete
---
- 코더 : 노유현
- 리뷰어 : 조웅제


# PRT(PeerReviewTemplate)
---
각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.
- [X] 1.코드가 정상적으로 동작하나요?
      코드가 잘 동작하고 결과를 확인할 수 있었습니다.
- [X] 2.문제를 제대로 이해했나요?
      궁금한 점을 질문했는데 잘 답변 해주셨습니다.
- [X] 3.함수가 작동하는 방식을 잘 설명했나요?
      동작하는 방식을 잘 설명해주셨습니다.
- [X] 4.발생 가능한 에러를 찾아서 디버깅을 했나요?
      안되는 부분을 찾아서 함께 해결했습니다.
- [X] 5.코드를 더 개선시켰나요?
      안되는 부분을 찾아서 함께 해결했습니다.

# 리뷰 설명
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크는 '초보자를 위한 파이썬 300제'의 역순으로 단어 불러오기 [::-1]
---
```python
# text와 headlines에 적용해 우리가 결정한 임의의 길이(text: 50, headlines: 8)가 몇 %의 샘플까지 포함하는 지 확인
below_threshold_len(text_max_len, data['text'])
below_threshold_len(headlines_max_len,  data['headlines'])
# 해당 코드에서 왜 56%만 남기는지 잘 설명하셨습니다.
```
```python
# 실제 요약, 추출요약, 예측요약을 같이 확인하고 싶다고 하셔서 아래 코드로 실행해보는걸 제안드렸습니다.
for i, (head, text) in enumerate(zip(data['headlines'], data['text'])):
  if i == 3:
    break
  print(f'실제요약: {head}')
  print('추출요약: '. summarize(text, ratio=0.30)
  print('예측 요약: ', decode_sequence(encoder_input_test[i].reshape(1, text_max_len)))
```

# 참고 링크 및 코드 개선 여부
---
```python
# '초보자를 위한 파이썬 300제' https://wikidocs.net/7022
# 리뷰를 통해 기존의 코드 2줄을 1줄로 변경함
