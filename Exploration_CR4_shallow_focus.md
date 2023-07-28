# Code Peer Review Templete
---
- 코더 : 노유현
- 리뷰어 : 박기용


# PRT(PeerReviewTemplate)
---
각 항목을 스스로 확인하고 체크하고 확인하여 작성한 코드에 적용하세요.
- [O] 1.코드가 정상적으로 동작하나요?
      (리뷰 예) 코드가 잘 동작하고 결과를 확인할 수 있었습니다.
- [O] 2.문제를 제대로 이해했나요?
      (리뷰 예) 궁금한 점을 질문했는데 잘 답변 해주셨습니다.
- [O] 3.함수가 작동하는 방식을 잘 설명했나요?
      (리뷰 예) 동작하는 방식을 잘 설명해주셨습니다.
- [O] 4.발생 가능한 에러를 찾아서 디버깅을 했나요?
      (리뷰 예) 안되는 부분을 찾아서 함께 해결했습니다.
- [O] 5.코드를 더 개선시켰나요?
      (리뷰 예) 안되는 부분을 찾아서 함께 해결했습니다.

---
```python
# 리뷰 :  model 을 반복해서 호출되어 있는데 , model Train 을 하는 상황이 아니라서 이렇게 반복적으로 불러올 필요는 없을 것 같습니다.
# 이미 학습되어 있는 model 의 가중치를 호출해서 모든 파일에 적용해서 사용 하는 하고 있어서 , 차후에는 그렇게 적용하시면 일이 많이 편해지시지 않을까 생각 됩니다. !!
# 아래 코드에 대한 리뷰 이니 참고 부탁 드리겠습니다.


### 수정 하셨으면 하는 코드
# 저장할 파일 이름을 결정합니다
# 1. os.getenv(x)함수는 환경 변수x의 값을 포함하는 문자열 변수를 반환합니다. model_dir 에 "/aiffel/human_segmentation/models" 저장
# 2. #os.path.join(a, b)는 경로를 병합하여 새 경로 생성 model_file 에 "/aiffel/aiffel/human_segmentation/models/deeplabv3_xception_tf_dim_ordering_tf_kernels.h5" 저장
# 1
model_dir2 = os.getenv('HOME')+'/aiffel/human_segmentation/models' 
# 2
model_file2 = os.path.join(model_dir2, 'deeplabv3_xception_tf_dim_ordering_tf_kernels.h5') 

# PixelLib가 제공하는 모델의 url입니다
model_url2 = 'https://github.com/ayoolaolafenwa/PixelLib/releases/download/1.1/deeplabv3_xception_tf_dim_ordering_tf_kernels.h5' 

# 다운로드를 시작합니다
urllib.request.urlretrieve(model_url2, model_file2) # urllib 패키지 내에 있는 request 모듈의 urlretrieve 함수를 이용해서 model_url에 있는 파일을 다운로드 해서 model_file 파일명으로 저장
('/aiffel/aiffel/human_segmentation/models/deeplabv3_xception_tf_dim_ordering_tf_kernels.h5',
 <http.client.HTTPMessage at 0x7f096ac21880>)
 # PixelLib 라이브러리 에서 가져온 클래스를 가져와서 semantic segmentation을 수행하는 클래스 인스턴스를 만듬
model2 = semantic_segmentation()

 # pascal voc에 대해 훈련된 예외 모델(model_file)을 로드하는 함수를 호출
model2.load_pascalvoc_model(model_file2)
# segmentAsPascalvoc()함수를 호출 하여 입력된 이미지를 분할, 
# 분할 출력의 배열을 가져옴, 분할은 pacalvoc 데이터로 학습된 모델을 이용
segvalues2, output2 = model2.segmentAsPascalvoc(img_path2)

###
```

# 참고 링크 및 코드 개선 여부
---
```python
# 코드가 반복 되는 부분이 있어서 해당 부분만 리뷰 했습니다. 수고 하셨습니다.
# 
