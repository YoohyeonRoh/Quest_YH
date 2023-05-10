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
   
import re
from collections import Counter



# Open the text file
with open('/content/drive/MyDrive/ColabNotebooks/06TheAvengers.txt', 'r') as file:
text = file.read()

# Convert all text to lowercase
text = text.lower()

# Remove all symbols
symbols = ['!', '"', '#', '$', '%', '&', "'", '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_', '`', '{', '|', '}', '~', '\n', '\t']
for symbol in symbols:
text = text.replace(symbol, '')

# Split text into bi-gram words
words = text.split()
bigrams = [words[i] + ' ' + words[i+1] for i in range(len(words)-1)]

# Count the frequency of each bigram
bigram_counts = {}
for bigram in bigrams:
if bigram in bigram_counts:
bigram_counts[bigram] += 1
else:
bigram_counts[bigram] = 1

# Find the most frequent bigram
most_frequent_bigram = max(bigram_counts, key=bigram_counts.get)
most_frequent_count = bigram_counts[most_frequent_bigram]

# Print the most frequent bigram and its count
print(f"The most frequent pair of bigrams is '{most_frequent_bigram}' with a count of {most_frequent_count}.")



# # 모든 기호 제거
# script = re.sub(r'[^\w\s]','',script)

# # word 단위로 분리
# words = script.split()

# # 2-gram 구하기
# ngrams = zip(words, words[1:])

# # 가장 빈도가 높은 2-gram 찾기
# most_common_ngram = Counter(ngrams).most_common(1)

# print(most_common_ngram)
```


#  Code 에 대한 리뷰어의 Comment 를 남겨주세요
코드는 간결하고 완벽하게 작성하셨습니다. 다만 파일이 안불러와져서 코드가 작동하는 것을 보지 못한 아쉬움이 있습니다.

# 참고 링크 및 코드 개선 여부


