# BITAmin MLOps 2주차 Snapshot

1주차의 재현 가능한 Docker 환경에 2주차 Git/GitHub 협업 결과를 통합한 공식 복구용 repository다. 3주차 WandB 실험 관리를 바로 시작할 수 있는 정상 실행 상태를 제공한다.

> 이 snapshot은 다음 세션 참여를 위한 임시 복구 수단이다. 각 조는 자신의 repository에서 누락된 branch, Pull Request, review, conflict 해결 경험과 실행 증거를 직접 보완해야 한다.

## 현재 상태

- 시작 가능 주차: 3주차
- 포함 범위: 1주차 개발환경 + 2주차 Git/GitHub 통합 결과
- 기준 데이터: IBM Telco Customer Churn
- 실행 결과: Logistic Regression과 Random Forest 성능 비교

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

## 로컬 실행

### 1. Repository clone

```bash
git clone https://github.com/Bo0sung/bitamin-mlops-2-snapshot.git
cd bitamin-mlops-2-snapshot
```

### 2. 가상환경 생성 및 패키지 설치

```bash
conda create -n bitamin-mlops-2 python=3.10 -y
conda activate bitamin-mlops-2
pip install -r requirements.txt
```

### 3. 모델 실행

```bash
python app.py
```

두 모델의 Accuracy, Precision, Recall, F1, ROC-AUC와 F1 기준 best model이 출력되면 정상이다.

## Docker 실행

```bash
docker build -t bitamin-mlops-week2 .
docker run --rm bitamin-mlops-week2
```

## 조별 repository 복구 방법

### 1. Snapshot을 별도 폴더에 clone

```bash
git clone https://github.com/Bo0sung/bitamin-mlops-2-snapshot.git snapshot-week2
```

### 2. 기존 조별 repository에서 복구 branch 생성

```bash
git clone https://github.com/<조 계정>/bitamin-mlops-<조 번호>.git
cd bitamin-mlops-<조 번호>
git switch -c recovery/start-week3
```

### 3. 필요한 파일 복사

`snapshot-week2`에서 다음 파일을 조별 repository로 복사한다.

- `app.py`
- `Dockerfile`
- `.dockerignore`
- `.gitignore`
- `requirements.txt`
- `WA_FnUseC_TelcoCustomerChurn.csv`

스냅샷의 `.git` 폴더나 발표조의 실행 증거를 복사하지 않는다.

### 4. 조별 repository에 반영

```bash
git add .
git commit -m "chore: recover from week 2 snapshot"
git push -u origin recovery/start-week3
```

Pull Request로 main에 반영한 뒤, 조별 환경에서 다시 실행하고 직접 캡처한 결과를 `week2/README.md`에 기록한다.

## 주차별 문서

- [1주차 완료 상태](week1/README.md)
- [2주차 완료 상태](week2/README.md)
- [Git/GitHub 협업 규칙](CONTRIBUTING.md)

## 출처

- 1주차 스냅샷: <https://github.com/chowonmoon/bitamin-mlops-1-snapshot>
- 데이터셋: [IBM Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn/data)
