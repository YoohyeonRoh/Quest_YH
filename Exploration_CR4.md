# Code Peer Review Templete
---
- 코더 : 노유현
- 리뷰어 : 박기용


# PRT(PeerReviewTemplate)
---
각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.
- [O] 1.코드가 정상적으로 동작하나요?
- [O] 2.문제를 제대로 이해했나요?
- [O] 3.함수가 작동하는 방식을 잘 설명했나요?
- [O] 4.발생 가능한 에러를 찾아서 디버깅을 했나요?
- [X] 5.코드를 더 개선시켰나요?

# 리뷰 설명

---
```python

.......
코드 중략
.....

# VGG16 학습된 가중치를 그대로 사용 . 
for layer in base_model.layers:
    layer.trainable = False

# FC Layer build 
model = Sequential()
model.add(base_model)
model.add(global_average_layer) # Flatten 대시에 Global pooling 을 사용
model.add(Dense(512, activation='relu'))
model.add(Dense(2, activation='softmax'))

model.compile(optimizer = tf.keras.optimizers.RMSprop(learning_rate=0.0001),
              loss=tf.keras.losses.sparse_categorical_crossentropy,
              metrics=['accuracy'])

```


# 참고 링크 및 코드 개선 여부
# layer 추가 하실때 변수에 대입 하는 방법도 좋지만 , 함수를 그대로 적용 하시는 편이 좋지 않을까 싶습니다. 개인적으로는 불필요한 자원낭비 같다는 생각이 듭니다. (LMS 에서는 그렇게 진행 했던걸로 알고 있지만.. )
# 아직 다 마무리 되신건 아니지만 , Fine Tuning 도 추가해서 진행해 보시면 성능 개선이 더 잘 보이시지 않을까 싶습니다.!!!
---
```python
