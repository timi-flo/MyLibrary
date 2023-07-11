# MyLibrary
`could not find module ... for target 'x86_64-apple-ios-simulator' found arm64 arm64-apple-ios-simulator` 에러 재현  
(`Undefined symbol: ...` 형태의 에러가 뜨기도 함)

## 조건
- Apple Silicon 디바이스, Xcode 14.3 미만 (Rosetta 로 실행중이지 않음)
- SPM 으로 제공되는 라이브러리 사용
- iOS 타겟 빌드 설정에 Excluded Architectures 가 arm64 로 설정되어 있는 상태에서 Watch 타겟 빌드

# 참고
- https://developer.apple.com/documentation/technotes/tn3117-resolving-build-errors-for-apple-silicon
