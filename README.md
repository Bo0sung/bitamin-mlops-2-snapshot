# BITAmin MLOps 2주차 시작 Snapshot

1주차의 **재현 가능한 ML 개발환경 구축 결과물**입니다.  
이 repository를 clone한 뒤 2주차 Git/GitHub 협업 실습을 시작합니다.

## 파일 구성

```text
bitamin-mlops-2-snapshot/
├── .gitignore
├── Dockerfile
├── README.md
├── WA_FnUseC_TelcoCustomerChurn.csv
├── app.py
└── requirements.txt
```

## 실행 방법

### 1. 가상환경 생성 및 활성화

```bash
conda create -n bitamin-mlops python=3.10 -y
conda activate bitamin-mlops
```

### 2. 패키지 설치

```bash
pip install -r requirements.txt
```

### 3. 모델 실행

```bash
python app.py
```

실행하면 고객 이탈 예측 Logistic Regression 모델의 정확도가 출력됩니다.

```text
Accuracy: 0.7854
```

### 4. Docker로 실행

```bash
docker build -t bitamin-mlops .
docker run --rm bitamin-mlops
```

## 데이터셋

- IBM Telco Customer Churn
- 7,043개 고객, 21개 변수
- 타깃 변수: `Churn`

## 2주차 실습 시작

조별 repository에 이 파일들을 반영한 뒤 branch 생성, commit, push, Pull Request, review, merge 실습을 진행합니다.
