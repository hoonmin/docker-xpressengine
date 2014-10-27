hoonmin/xpressengine
=======================

## XpressEngine

XpressEngine은 누구나 쉽고 편하고 자유롭게 콘텐츠를 발행을 할 수 있도록 하기 위한 CMS(Content Management System)입니다.
XpressEngine is CMS(Content Management System) to freely publish your contents without efforts.

## hoonmin/xpressengine

이 도커 파일은 웹호스팅 서비스를 이용하지 않는 개인 서버 운영자가 XpressEngine을 보다 쉽게 사용할 수 있도록 도와줍니다.
This docker file helps users who run personal servers to install and setup XpressEngine more easily.

도커 이미지 생성 및 실행을 위해 미리 준비된 쉘스크립트를 사용하실 수 있습니다.
포트 설정은 이 쉘스크립트들을 수정하시면 됩니다. 기본 포트는 80 입니다.
You can use shell scripts to build and run the docker image.
Please modify the scripts to change the port configurations. The default port is 80.

- 도커 이미지 생성 (Create a docker image)
```
sudo ./build.sh
```
- 도커 이미지 실행 (Run the docker image)
```
sudo ./run.sh
```

## XpressEngine 설정 (Setup the XpressEngine)

- 웹브라우저로 설치 페이지에 접속합니다. 서버 IP가 10.0.0.1이라면 접속 주소는 10.0.0.1:8080 입니다.
- 언어 선택 후 DB 설정은 다음과 같이 수행합니다.
  - 사용자 : maria
  - 암호 : maria
  - DB : maria

