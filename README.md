# BITAmin MLOps 2주차 시작 Snapshot

1주차의 재현 가능한 ML 개발환경 구축 결과를 반영하여, 2주차 Git/GitHub 협업 실습을 바로 시작할 수 있도록 만든 공식 복구용 repository입니다.

> 이 snapshot에는 2주차 실습 결과가 포함되어 있지 않습니다. 각 조는 이 상태에서 직접 branch, commit, Pull Request, review, merge 및 Merge Conflict 해결을 수행해야 합니다.

## 현재 상태

- 시작 가능 주차: 2주차
- 포함 범위: 1주차 Docker 기반 ML 개발환경
- 기준 데이터: IBM Telco Customer Churn
- 기준 모델: Logistic Regression baseline
- 정상 실행 결과: `Accuracy: 0.7854`

## 파일 구조

```text
bitamin-mlops-2-snapshot/
├── .dockerignore
├── .gitignore
├── CONTRIBUTING.md
├── Dockerfile
├── README.md
├── WA_FnUseC_TelcoCustomerChurn.csv
├── app.py
├── requirements.txt
├── week1/
│   └── README.md
└── week2/
    └── README.md
```

- `week1/README.md`: 1주차 완료 상태 및 실행 방법
- `week2/README.md`: 각 조가 채워야 하는 2주차 체크포인트 기록 템플릿
- `CONTRIBUTING.md`: branch, commit, Pull Request 및 conflict 해결 안내

## 1. Repository clone

```bash
git clone https://github.com/Bo0sung/bitamin-mlops-2-snapshot.git
cd bitamin-mlops-2-snapshot
```

## 2. 가상환경 생성 및 패키지 설치

```bash
conda create -n bitamin-mlops-2 python=3.10 -y
conda activate bitamin-mlops-2
pip install -r requirements.txt
```

## 3. Baseline 모델 실행

```bash
python app.py
```

정상 실행 결과:

```text
Accuracy: 0.7854
```

## 4. Docker 실행

```bash
docker build -t bitamin-mlops-week2 .
docker run --rm bitamin-mlops-week2
```

컨테이너에서도 `Accuracy: 0.7854`가 출력되면 2주차를 시작할 준비가 완료된 것입니다.

## 조별 repository 복구 방법

### 방법 1. 아직 조별 repository가 없는 경우

1. 이 snapshot을 clone합니다.
2. `.git` 폴더를 삭제합니다.
3. 조별로 생성한 `bitamin-mlops-{조번호}` repository에 새로 연결합니다.

```bash
git init
git add .
git commit -m "chore: initialize project from week 2 snapshot"
git branch -M main
git remote add origin https://github.com/<조 계정>/bitamin-mlops-<조 번호>.git
git push -u origin main
```

### 방법 2. 기존 조별 repository가 있는 경우

1. 이 snapshot을 별도 폴더에 clone합니다.
2. 기존 조별 repository에서 복구 branch를 만듭니다.
3. `.git` 폴더를 제외한 snapshot 파일을 조별 repository에 복사합니다.
4. Pull Request로 main에 반영합니다.

```bash
git switch -c recovery/start-week2
git add .
git commit -m "chore: recover from week 2 snapshot"
git push -u origin recovery/start-week2
```

## 2주차 실습 시작

main의 baseline 실행을 확인한 뒤 조원별 branch를 생성합니다.

```bash
git switch main
git pull origin main
git switch -c feature/<작업명>
```

역할 예시:

- `feature/preprocessing`: 데이터 전처리 수정
- `feature/logistic-regression`: Logistic Regression 개선
- `feature/random-forest`: Random Forest 추가
- `feature/evaluation-metrics`: 평가 metric 추가

세부 협업 절차는 [CONTRIBUTING.md](CONTRIBUTING.md)를 확인합니다.

## 주차별 문서

- [1주차 완료 상태](week1/README.md)
- [2주차 실습 기록 템플릿](week2/README.md)
- [Git/GitHub 협업 규칙](CONTRIBUTING.md)

## 주의사항

- snapshot의 `.git` 폴더를 조별 repository에 복사하지 않습니다.
- snapshot을 그대로 당일과제로 제출하지 않습니다.
- branch, Pull Request, review 및 conflict 해결은 각 조 repository에서 직접 수행합니다.
- 실행 화면과 해결 과정은 각 조의 `week2/README.md`에 기록합니다.

## 출처

- 1주차 스냅샷: <https://github.com/chowonmoon/bitamin-mlops-1-snapshot>
- 데이터셋: [IBM Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn/data)
