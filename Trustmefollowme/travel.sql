-- 게시판
drop sequence boardseq;
create sequence boardseq 
start with 1
increment by 1
nocache;

drop table board;
CREATE TABLE board (
	num	number	NOT NULL,
  writer varchar2(50) NOT NULL,
	title	varchar2(500)	NOT NULL,
	reg_date	date	NOT NULL,
	readcount	number default 0,
	content	varchar2(3000)	NOT NULL,
	ip	varchar2(20)	NOT NULL,
	image	varchar2(100) default 'board.jpg',
  mEmail varchar2(30),
  jnum varchar2(500),
  minDate varchar2(100),
  maxDate varchar2(100),
  likes number default 0
);


-- 게시판 좋아요
drop sequence likeseq;
create sequence likeseq;
drop table likes;
create table likes(
num number primary key,
b_num varchar2(50),
m_num varchar2(50),
likes number
);
commit;


-- 게시판 댓글
drop sequence chatseq;
create sequence chatseq;

drop table chat;
create table chat(
chatnum number primary key,
b_num varchar2(50),
writer varchar2(50),
content varchar2(2000),
ref number,
re_level number,
re_step number,
ip varchar2(20) not null,
reg_date date not null
);

drop table spot;
CREATE TABLE spot (
	snum	number	NOT NULL primary key,
	name	varchar2(300)	NULL,
	xpos	varchar2(300)	NULL,
	ypos	varchar2(300)	NULL,
	address	varchar2(300)	NULL,
	content	varchar2(300)	NULL,
	image	varchar2(300)	NULL,
	image2	varchar2(300)	NULL,
	image3	varchar2(300)	NULL,
    image4	varchar2(300)	NULL,
	image5	varchar2(300)	NULL,
  stime varchar2(300)	NULL
);
drop sequence spot_seq;
create sequence spot_seq
   increment by 1
   start with 1
   minvalue 1
   maxvalue 10000;


--카페 번호 시퀀스
drop sequence cafeseq;
create sequence cafeseq
  increment by 1
  start with 1
  nocache;

--카페 정보
drop TABLE cafe;
CREATE TABLE cafe (
    cnum int primary key,               -- 카페 번호 
    name varchar2(255) NOT NULL,      -- 카페 이름 
    xpos varchar2(255),               -- 카페 위도 
    ypos varchar2(255),               -- 카페 경도
    address varchar2(255),             -- 카페 주소 
    ctel1 varchar2(15),                  -- 카페 전화 시작 번호 
    ctel2 varchar2(15),                  -- 카페 전화 중간 번호 
    ctel3 varchar2(15),                  -- 카페 전화 끝 번호   
    c_date varchar2(30),               -- 카페 개업 일자
    ctime1 varchar2(20),               -- 카페 개업 시작 시간
    ctime2 varchar2(20),               -- 카페 개업 종료 시간
    image varchar2(30),             -- 카페 사진(메인 사진)
    image2 varchar2(30),            -- 카페 사진2
    image3 varchar2(30),            -- 카페 사진3
    image4 varchar2(30),            -- 카페 사진4
    image5 varchar2(30)             -- 카페 사진5
);


-- 음식점
drop sequence resseq;
create sequence resseq 
start with 1
increment by 1
nocache;

drop table rest;
create table rest (
	rnum number primary key,	-- 음식점 고유번호
	name varchar2(30) not null,	-- 음식점 이름
	xpos varchar2(255) not null,	-- 위도
	ypos varchar2(255) not null,	-- 경도
	address varchar2(255) not null, -- 장소(경기도 00시)
	image varchar2(50),		-- 상품 이미지
	image2 varchar2(50),		-- 상품 이미지
	image3 varchar2(50),		-- 상품 이미지
	image4 varchar2(50),		-- 상품 이미지
	image5 varchar2(50),		-- 상품 이미지
	rtel1 varchar2(255) not null,	-- 연락처 시작
	rtel2 varchar2(255) not null,	-- 연락처 중간
	rtel3 varchar2(255) not null,	-- 연락처 끝
	rtime1 varchar2(255) not null,	-- 영업 시작 시간
	rtime2 varchar2(255) not null,	-- 영업 종료 시간
	rdate varchar2(255) not null,	-- 음식점 개업일자
  rcontent varchar2(2000) not null -- 음식점 소개
);

drop table hotel;
create table hotel(
   hnum number   not null,--호텔 고유번호
   name varchar2(500) not null, --호텔이름
   hprice varchar2(500) not null,--호텔가격
   image varchar2(500)   not null,--호텔이미지1
   image2 varchar2(500) not null,--룸이미지2
   image3 varchar2(500) not null,--룸이미지3
   image4 varchar2(500) not null,--룸이미지4
   image5 varchar2(500) not null,--룸이미지5
   image6 varchar2(500) not null,--부대시설이미지6
   address varchar2(500) not null,--호텔주소
   htel varchar2(50) not null,--전화번호
   facility varchar2(500) not null,--부대시설
   hcontent varchar2(500) not null,--호텔 상세내용
   rname1 varchar2(500)   not null,--룸이름1
   rname2 varchar2(500)   not null,--룸이름2
   rname3 varchar2(500)   not null,--룸이름3
   rname4 varchar2(500)   not null,--룸이름4
   rprice1   varchar2(500) not null,--룸1가격
   rprice2   varchar2(500) not null,--룸2가격
   rprice3   varchar2(500) not null,--룸3가격
   rprice4   varchar2(500) not null,--룸4가격
   xpos varchar2(500) not null,--호텔위도
   ypos varchar2(100) not null--호텔경도
);

drop sequence hotel_seq;
create sequence hotel_seq
   increment by 1
   start with 1
   minvalue 1
   maxvalue 10000;

drop table member;
create table member(
num varchar2(50) not null,
email varchar2(100) not null,
password varchar2(50) not null,
name varchar2(50) not null,
birth varchar2(100) not null,
address1 varchar2(100) not null,
address2 varchar2(100),
mtel varchar2(50) not null,
myjNum number default 0 --해당 아이디의 고유 여정번호
);

insert into member(num,email,password,name ,birth ,address1, address2, mtel)
values(member_seq.nextval,'admin@gmail.com','admin1234','어드민','1996-12-24','서울 강서구 월정로 20길 13','늘예솔하우스 1202호','010-1234-5678');

insert into member(num,email,password,name ,birth ,address1, address2, mtel)
values(member_seq.nextval,'3247975079','1234','채훈','1999-02-28','경기 평택시 안중읍 성해홍원로 64','푸르지오 1동 101호','010-1234-5678');


commit;

drop sequence member_seq;
create sequence member_seq
   increment by 1
   start with 1
   minvalue 1
   maxvalue 10000;

select * from member;

DROP TABLE myjourney;
CREATE TABLE myjourney (
	jnum	number	NOT NULL ,
	id	    varchar2(300)	NULL,
    num     varchar2(300),
	xpos	varchar2(300)	NULL,
	ypos	varchar2(300)	NULL,
	cate	varchar2(300)	NULL,
	ref	    number	NULL,
	turn	varchar2(300)	NULL,
	jdate	varchar2(300)	NULL
 
);
drop sequence myj_seq;
create sequence myj_seq
   increment by 1
   start with 1
   minvalue 1
   maxvalue 10000;

SELECT * FROM board
ORDER BY DBMS_RANDOM.VALUE;
select * from board;
select *from member ;

select * from likes;
select * from rest;
select * from cafe;
select * from hotel;
select * from myjourney ;
select * from spot;

commit;


SELECT
    m.jnum, m.id, m.xpos, m.ypos, m.cate, m.ref, m.turn, m.jdate,
    COALESCE(s.name, r.name, h.name, c.name) AS name,
    COALESCE(s.address, r.address, h.address, c.address) AS address,
    COALESCE(s.image, r.image, h.image, c.image) AS image,
    COALESCE(s.image2, r.image2, h.image2, c.image2) AS image2,
    COALESCE(s.image3, r.image3, h.image3, c.image3) AS image3,
    COALESCE(s.image4, r.image4, h.image4, c.image4) AS image4,
    COALESCE(s.image5, r.image5, h.image5, c.image5) AS image5
	FROM
    myjourney m
	LEFT JOIN spot s ON m.ref = s.snum AND m.cate = 'spot'
	LEFT JOIN rest r ON m.ref = r.rnum AND m.cate = 'restaurant'
	LEFT JOIN hotel h ON m.ref = h.hnum AND m.cate = 'hotel'
	LEFT JOIN cafe c ON m.ref = c.cnum AND m.cate = 'cafe'
	WHERE
    m.id = 'noa@noa' and m.jdate = '2023-12-29' and jnum= 1
   order by m.turn ;


select * from myjourney WHERE id = 'noa2006@naver.com' and jnum =3 order by jdate ,turn ;

SELECT DISTINCT jdate FROM myjourney WHERE id = 'noa2006@naver.com' and jnum= 1 order by jdate ;
	

select m.jnum,m.id,m.xpos,m.ypos,m.cate,m.ref,m.turn,m.jdate,c.name,c.address,c.image,c.image2,c.image3,c.image3,c.image4,c.image5
from myjourney	m right join spot c on m.ref = c.snum where m.id = 'admin' and m.cate ='spot' ;
	
commit;

	SELECT
    m.jnum, m.id, m.xpos, m.ypos, m.cate, m.ref, m.turn, m.jdate,
    COALESCE(s.name, r.name, h.name, c.name) AS name,
    COALESCE(s.address, r.address, h.address, c.address) AS address,
    COALESCE(s.image, r.image, h.image, c.image) AS image,
    COALESCE(s.image2, r.image2, h.image2, c.image2) AS image2,
    COALESCE(s.image3, r.image3, h.image3, c.image3) AS image3,
    COALESCE(s.image4, r.image4, h.image4, c.image4) AS image4,
    COALESCE(s.image5, r.image5, h.image5, c.image5) AS image5
FROM
    myjourney m
LEFT JOIN spot s ON m.ref = s.snum AND m.cate = 'spot'
LEFT JOIN rest r ON m.ref = r.rnum AND m.cate = 'restaurant'
LEFT JOIN hotel h ON m.ref = h.hnum AND m.cate = 'hotel'
LEFT JOIN cafe c ON m.ref = c.cnum AND m.cate = 'cafe'
WHERE
     m.id = 'noa2006@naver.com'
   order by m.jdate ,m.turn ;

SELECT DISTINCT jdate FROM myjourney WHERE id = 'noa2006@naver.com' order by jdate; 

Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (5,'용두암해안도로','33.5158700504','126.5120821042','제주특별자치도 제주시 서해안로 687-8','바다를 비추는 조명이 설치되어 있어 밤낮으로 산책을 즐기기에도 좋은 환경을 갖추고 있습니다.','road1.jpeg','road2.jpeg','road3.jpeg','road2.jpeg','road1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (6,'용연구름다리','33.5149090722','126.5137903112','제주특별자치도 제주시 흥운길 69',null,'spot1.jpeg','spot2.jpeg','spot3.jpeg','spot2.jpeg','spot1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (7,'만장굴','33.536500525644','126.77281988401',' 제주특별자치도 제주시 구좌읍 만장굴길 182',null,'cave1.jpeg','cave2.jpeg','cave3.jpeg',null,null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (26,'9.81 파크','33.389780','126.366461','제주특별자치도 제주시 애월읍 천덕로 880-24','세계 최초 스마트 레이싱 테마파크 ‘9.81파크’는 미래에 온 듯한 감각적인 실내 공간과 다양한 액티비티 그리고 신나는 레이싱과 함께 제주 자연을 온전히 경험할 수 있는 곳으로 애월 바다와 한라산 사이에 위치하고 있다. ','9.81p0.jpeg','9.81p1.jpeg','9.81p2.jpeg','9.81p3.jpeg','9.81p4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (27,'산굼부리','33.431593','126.690018','대한민국 제주특별자치도 제주시 조천읍 비자림로 768','거대한 분화구까지 이어지는 긴 산책로를 따라 아름답고 고즈넉한 풍경이 펼쳐집니다.','sangum1.jpeg','sangum2.jpeg','sangum4.jpeg','sangum5.jpeg','sangum3.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (28,'세화해변','33.525394','126.860180','제주특별자치도 제주시 구좌읍 세화길','제주올레 20코스를 걷다 보면 세화민속오일장과 해녀박물관 사이에 작은 해변 하나를 만날 수 있다. 구좌읍 세화리에 위치한 이 해변은 정식 해수욕장도 아니고 규모도 크지 않지만, 눈이 시리게 맑고 파란 바다를 선물해준다.','sewha0.jpeg','sewha1.jpeg','sewha2.jpeg','sewha3.jpeg','sewha4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (30,'용머리해안','33.231949','126.314639','제주특별자치도 서귀포시 안덕면 산방로 218-10','산방산 앞자락에 있는 바닷가로 산방산 휴게소에서 10여분 걸어내려가면 수려한 해안절경의 용머리 해안과 마주치게 된다.','yungmu1.jpeg','yungmu2.jpeg','yungmu3.jpeg','yungmu4.jpeg','yungmu5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (31,'비자림','33.484152','126.806472','대한민국 제주특별자치도 제주시 구좌읍 비자숲길 55','500~800년된 비자나무 수천 그루가 자생하는 천연기념물입니다.','bija1.jpeg','bija0.jpeg','bija2.jpeg','bija3.jpeg','bija4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (32,'휴애리 자연생활공원','33.308686','126.633805','제주특별자치도 서귀포시 남원읍 신례동로 256','수많은 꽃들과 한라산 풍경이 더해져 더욱 아름다움을 자랑하는 꽃 정원이다. 연중무휴이며, 매년 수차례 꽃 축제(유채, 매화, 수국, 핑크뮬리, 동백)를 진행하고 있다','huae2.bmp','huae1.jpeg','huae3.bmp','huae4.bmp','huae5.bmp');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (33,'녹차동굴','33.381479','126.787077','제주에서 유명한 천연 용암 동굴 포토존이다. 동굴 안쪽에서 동굴 입구를 바라보며 찍는 사진은 미묘하고 신비로운 느낌을 준다.','제주특별자치도 서귀포시 중산간동로 4772','nok1.jpeg','nok2.jpeg','nok3.jpeg','nok4.jpeg','nok5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (34,'일출랜드','33.382195','126.842141','제주특별자치도 서귀포시 성산읍 중산간동로 4150-30','반려동물 동반 가능한 제주 식물원 테마파크','illchu0.png','illchu1.png','illchu3.png','illchu2.png','illchu4.png');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (22,'용두암','33.516160','126.512057','제주특별자치도 제주시 용담2동 용두암길 15','해안에 위치한 용 머리 모양의 화산암 형성물이 있는 인기 명소입니다.','yungdo1.jpeg','yungdo2.jpeg','yungdo3.jpeg','yungdo4.jpeg','yungdo5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (23,'신창풍차해안','33.343340','126.174012','제주특별자치도 제주시 한경면 신창리 1323','구불구불 해안선을 따라 보이는 하얀 풍차와 에메랄드빛 바다는 우리에게 상쾌한 가을 풍경을 보여준다. ','sincha0.jpeg','sincha1.jpeg','sincha2.jpeg','sincha4.jpeg','sincha3.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (24,'보롬왓','33.413417','126.752801','제주특별자치도 서귀포시 번영로 2350-104','서귀포 표선면에 위치한 농장으로, 바람이 부는 밭이라는 뜻의 제주 방언이다. 밭이라는 명칭이 있는 만큼 청보리, 메밀 등 밭작물을 만날 수 있으며, 튤립, 유채꽃, 수국, 라벤더 등 아름다운 꽃들도 만나볼 수 있다.','borim3.jpeg','borim0.jpeg','borim1.jpeg','borim2.jpeg','borim4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (5,'용두암해안도로','33.5158700504','126.5120821042','제주특별자치도 제주시 서해안로 687-8','바다를 비추는 조명이 설치되어 있어 밤낮으로 산책을 즐기기에도 좋은 환경을 갖추고 있습니다.','road1.jpeg','road2.jpeg','road3.jpeg','road2.jpeg','road1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (6,'용연구름다리','33.5149090722','126.5137903112','제주특별자치도 제주시 흥운길 69',null,'spot1.jpeg','spot2.jpeg','spot3.jpeg','spot2.jpeg','spot1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (7,'만장굴','33.536500525644','126.77281988401',' 제주특별자치도 제주시 구좌읍 만장굴길 182',null,'cave1.jpeg','cave2.jpeg','cave3.jpeg',null,null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (10,'섭지코지','33.424191','126.931154','제주특별자치도 서귀포시 성산읍 섭지코지로','등대, 레스토랑, 상점, 경치 좋은 전망, 산책로를 갖추고 있는 조용한 해변 지역입니다.','subji1.jpeg','subji2.jpeg','subji3.jpeg','subji4.jpeg','subji5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (8,'성산 일출봉','33.458053','126.941774','대한민국 서귀포시 성산 일출봉','화산 분화로 형성된 이 독특한 분화구 형태의 봉우리는 고대의 성과 비슷하다고 합니다.','sungsan4.jpeg','sungsan1.jpeg','sungsan5.jpeg','sungsan3.jpeg',null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (9,'제주동문시장','33.513308','126.528280','제주특별자치도 제주시 특별자치도, 동문시장','싱싱한 농수산물, 의류, 잡화 등을 판매하는 역사가 오래된 실내 시장입니다.','dongmon1.png','dongmon2.jpeg','dongmon3.jpeg','dongmon4.jpeg','dongmon5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (11,'협재해변','33.393919','126.240425','대한민국 제주특별자치도 제주시 한림읍 한림로 329-10','조용한 분위기의 백사장으로 맑은 청록색 바닷물과 비양도 전망이 유명합니다.','hunje1.jpeg','hubje2.jpeg','hunje3.jpeg','hubje4.jpeg','hubje5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (12,'제주오설록 티뮤지엄','33.305732','126.289684','제주특별자치도 서귀포시 안덕면 신화역사로 15','녹차 전시관, 녹차 밭을 볼 수 있는 전망대, 인기 있는 기념품 가게, 카페가 있습니다.','ohsul1.jpeg','ohsul2.jpeg','ohsul3.jpeg','ohsul4.jpeg','ohsul5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (13,'새별오름','33.365369','126.256657','대한민국 제주시 새별오름','풍경이 아름다우며 매년 오름에 불을 피우는 들불 축제로 유명한 화산성 산맥입니다.','sebuk1.jpeg','sebuk2.jpeg','sebuk3.jpeg','sebuk4.jpeg','sebuk5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (14,'도두 무지개 해안도로','33.509252','126.472057','제주특별자치도 제주시 도두일동','파란 제주 하늘과 그 아래로 끝없이 펼쳐진 수평선을 마주할 수 있는 용담이호해안도로. 제주공항과 가까운 곳에 있어 여행 전후로 가볍게 드라이브를 즐길 수 있는 곳이다','dudo1.jpeg','dudo2.jpeg','dudo3.jpeg','dudo5.jpeg','dudo4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (15,'쇠소깍','33.252215','126.623346','제주특별자치도 서귀포시 쇠소깍로 138','화산석 절벽에 둘러싸인 아름다운 하구로 카약과 전통 뗏목 타기가 유명합니다.','seso1.jpeg','seso2.jpeg','seso3.jpeg','seso4.jpeg','seso5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (16,'카멜리아 힐','33.289751','126.368116','대한민국 제주특별자치도 서귀포시 안덕면 병악로 166','1979년에 개장한 200,000m² 규모의 수목원으로 수많은 동백과 다양한 식물 종을 볼 수 있으며 연중무휴입니다.','camel1.jpeg','camel2.jpeg','camel3.jpeg','camel4.jpeg','camel5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (17,'천제연폭포','33.252186','126.418423','대한민국 제주특별자치도 서귀포시 중문동 2232','동굴에서 쏟아지는 물이 3단계의 폭포를 이루고 녹지로 둘러싸여 있습니다.','chunje1.jpeg','chunje2.jpeg','chunje3.jpeg','chunje4.jpeg','chunje5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (18,'서귀포 매일올레시장','33.248618','126.564149','제주특별자치도 서귀포시 특별자치도 중앙로62번길 18','1960년대에 설립된 실내 시장으로 농수산물, 가정용품 등을 판매하는 가판대가 많이 있습니다.','allle1.jpeg','allle3.jpeg','allle2.jpeg','allle4.jpeg',null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (19,'한담해변','33.461999','126.310584','	제주특별자치도 제주시 애월읍 애월로1길 26-4','주 북서부에 위치하여 애월에서 곽지까지 해안을 따라 이어진다. 제주시가 2009년 숨은 비경 31로 선정했으며, 맑고 투명한 바다로 유명하다','handam1.jpeg','handam2.jpeg','handam4.jpeg','handam3.jpeg','handam5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (20,'김녕해수욕장','33.558104','126.759499','제주특별자치도 제주시 구좌읍 구좌해안로 237','거대한 너럭바위 용암 위에 모래가 쌓여 만들어졌으며, 성세기는 외세의 침략을 막기 위한 작은 성이라는 뜻이 담겨 있다.','kimne1.jpeg','kimne2.jpeg','kimne3.jpeg','kimne4.jpeg','kimne5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (21,'사려니숲길 - 비자림로 입출구','33.394689','126.684529','제주특별자치도 서귀포시 특별자치도, 표선면 가시리 산 158-4','삼나무 숲속으로 고즈넉한 길이 나 있으며 조용히 산책을 즐기고 야생동물을 보고 사진을 찍을 수 있습니다','sare1.jpeg','sare2.jpeg','sare3.jpeg','sare4.jpeg','sare5.jpeg');

-- 음식점

insert into rest values(resseq.nextval,'수희식당','33.2454605','126.5613681','제주 서귀포시 태평로 377','suhee.jpg','suhee2.jpg','suhee3.jpg','suhee4.jpg','suhee5.jpg','064','762','0777','08:00','21:00','2003-03-01','동네의 평범한 분식점같이 소박한 분위기의 수희식당은 제주의 여느 식당과 마찬가지로 다양한 메뉴의 향토음식을 제공합니다. 메뉴판에는 없지만 계절에 맞춰 제공되는 담백한 맛의 성게물회도 수희식당의 인기메뉴중 하나입니다.');
insert into rest values(resseq.nextval,'솔지식당','33.4922831','126.4726527','제주 제주시 월랑로 88','solji.jpg','solji2.jpg','solji3.jpg','solji4.jpg','solji5.jpg','0507','1315','0349','12:00','21:40','2005-06-27','공항근처 멜조림이 유명한 도새기 맛집! 멜조림이 맛있는 맛집입니다.');
insert into rest values(resseq.nextval,'착한집','33.4999552','126.5070561','제주 제주시 서광로 98','kind.jpg','kind2.jpg','kind3.jpg','kind4.jpg','kind5.jpg','064','713','7136','11:00','21:00','2018-05-22','제주산통갈치, 왕갈비, 전복, 문어, 이모든걸 한번에 맛볼수 있는 왕갈갈조림! 50년의 노하우로 가장 신선한 생선을 중간 유통 단계를 없애 가장 착한 가격으로 제공하겠습니다.');
insert into rest values(resseq.nextval,'제주오누이','33.4999552','126.5070561','제주특별자치도 제주시 구좌읍 해맞이해안로 972','onui.jpg','onui2.jpg','onui3.jpg','onui4.jpg','onui5.jpg','02','336','8546','09:00','18:30','2012-05-25','제주오누이는 전복, 광어 전문점입니다. 제주산 재료로 정직하게 요리하며, 전복, 광어 등 제주의 맛을 내고자 노력합니다. 저희 제주오누이에서 구좌읍 바다를 만끽하며, 정성스레 만든 음식도 맛있게 드시길 바랍니다.');
insert into rest values(resseq.nextval,'제주오성','33.2556752','126.4146427','제주특별자치도 색달동 중문관광로 27','oseong.jpg','oseong2.jpg','oseong3.jpg','oseong4.jpg','oseong5.jpg','02','336','8546','09:00','18:30','1985-01-01','제주오성을 찾아주시는 고객님께 좋은 재료로 아낌없이 요리하겠다고 약속드립니다. 저희 오성은 서귀포 갈치구이, 서귀포 갈치조림, 서귀포 맛집 제주맛집이 무엇인지 보여드리겠습니다.');

insert into rest values(resseq.nextval,'나목도 식당','33.3534854','126.7718273','제주 서귀포시 특별자치도 표선면 가시리 1879-4','namokdo.jpg','namokdo2.jpg','namokdo3.jpg','namokdo4.jpg','namokdo5.jpg','064','787','1202','09:00','20:00','1987-01-01','가시리 녹산로 근처 두루치기 맛있는 곳 맛있는 두루치기 드시러 오세요~');
insert into rest values(resseq.nextval,'별돈별 정원본점','33.3086406','126.1802146','제주특별자치도 제주시 한경면 고산로8길 21-15','star.jpg','star2.jpg','star3.jpg','star4.jpg','star5.jpg','0507','1371','5895','12:00','22:00','2017-05-20','신선한 흑돼지를 연탄불에 은은하게 구워 육즙이 가득 갇히게 하여, 제주도에서 제주스럽고 감성터지는 장소에서 입안에 맛이 폭발하는 것을 느끼실 수 있을겁니다! 특별한 날을 더욱 특별하게, 일상적인 날은 특별하게 만들어주는 장소입니다!');
insert into rest values(resseq.nextval,'해녀의집','33.4784355','126.3669405','제주특별자치도 제주시 애월읍 애월해안로 591','haenyeo.jpg','haenyeo2.jpg','haenyeo3.jpg','haenyeo4.jpg','haenyeo5.jpg','064','713','9366','10:00','20:00','2013-11-11','전복, 소라, 돌 멍게 등을 생물로 먹을 수 있는 곳. 익힌 메뉴로는 문어숙회, 소라찜, 전복죽이 있습니다.. 풍경이 좋은 서쪽 해안 도롯가에 있어 바다를 보면서, 신선한 해산물을 먹을 수 있습니다.');
insert into rest values(resseq.nextval,'자매국수','33.4985643','126.4587880','제주 제주시 항골남길 46','sisters.jpg','sisters2.jpg','sisters3.jpg','sisters4.jpg','sisters5.jpg','064','746','2222','09:00','18:00','2002-02-28','고기국수와 돔베고기의 조합이 일품입니다. 인기많은 고기국수와 비빔국수를 신선한 재료로 제공하겠습니다.');
insert into rest values(resseq.nextval,'우진해장국','33.5115050','126.5200319','제주 제주시 서사로 11','woojin.jpg','woojin2.jpg','woojin3.jpg','woojin4.jpg','woojin5.jpg','064','757','3393','06:00','22:00','1995-04-12','제주산 고사리를 갈아 넣고 푹 끓여 갈색 빛깔이 나는 제주식 해장국을 만날 수 있는 한식당입니다.');

insert into rest values(resseq.nextval,'안녕협재씨','33.3866186','126.2250355','제주특별자치도 제주시 특별자치도, 한림읍 금능9길 12','hello.jpg','hello2.jpg','hello3.jpg','hello4.jpg','hello5.jpg','064','796','0624','09:00','16:00','2017-06-24','딱 새우장 비빔밥, 통전복 내장 비빔밥이 대표 메뉴입니다. 수육과 함께 드시면 조합이 너무 좋아요.');
insert into rest values(resseq.nextval,'올래국수','33.4915195','126.4972577','제주특별자치도 제주시 특별자치도, 연동 귀아랑길 24','ollae.jpg','ollae2.jpg','ollae3.jpg','ollae4.jpg','ollae5.jpg','064','742','7355','08:30','15:00','2011-05-05','돼지사골로 우려낸 육수에 직접 담근김치를 돼지고기와 함께 먹는 국수 입니다. 신선한 재료를 사용하여 항상 정성을 담아 제공하겠습니다.');
insert into rest values(resseq.nextval,'명진전복','33.5324891','126.8502082','제주특별자치도 제주시 구좌읍 해맞이해안로 1282','myoungjin.jpg','myoungjin2.jpg','myoungjin3.jpg','myoungjin4.jpg','myoungjin5.jpg','064','782','9944','09:30','21:00','2012-07-01','돌솥밥으로 유명한 곳, 전복죽, 전복 돌솥밥, 전복구이, 전복회 등 전복의 다양한 맛을 느낄 수 있는 맛집입니다.');
insert into rest values(resseq.nextval,'돈사돈 제주본관','33.4788707','126.4640837','제주특별자치도 제주시 노형동 3086-3','donsadon.jpg','donsadon2.jpg','donsadon3.jpg','donsadon4.jpg','donsadon5.jpg','064','746','8989','12:30','22:00','2018-07-15','돈사돈의 근고기는 일반 음식점에서 느낄 수 없는 깊은 맛과 멜젓의 조화를 이루고있으며 외지나 해외에서도 많이 찾아 오시는 분들께 맛있는 근고기를 제대로 대접해 드리기 위해 노력하고 있습니다.');
insert into rest values(resseq.nextval,'하갈비국수','33.4645313','126.3088230','제주 제주시 애월읍 애월북서길 54','hagalbi.jpg','hagalbi2.jpg','hagalbi3.jpg','hagalbi4.jpg','hagalbi5.jpg','0507','1390','2724','09:00','18:00','2020-12-01','제주 서쪽 애월맛집 진짜고기국수 맛집 하갈비국수 입니다. 문을 열고 들어 서는 순간 펼쳐지는 손에 집힐듯 한 오션뷰에서 최고의 식사를 약속드립니다.');

insert into rest values(resseq.nextval,'한라전복','33.4707177','126.9171910','제주특별자치도 서귀포시 특별자치도, 대정읍 대한로 33','hanra.jpg','hanra2.jpg','hanra3.jpg','hanra4.jpg','hanra5.jpg','064','782','5190','10:00','20:00','1997-08-17','인기많은 전복 돌솥밥과 전복구이 정성을 다해 모시겠습니다.');
insert into rest values(resseq.nextval,'연돈','33.2592174','126.4057641','제주 서귀포시 색달로 10','yeondon.jpg','yeondon2.jpg','yeondon3.jpg','yeondon4.jpg','yeondon5.jpg','0507','1386','7060','12:00','21:00','2015-09-25','항상 행복한 식사를 할 수 있도록 변하지 않는 명품 돈까스를 대접하겠습니다.');
insert into rest values(resseq.nextval,'성읍칠십리식당','33.3892433','126.8011784','제주 서귀포시 표선면 성읍정의현로 74','seong.jpg','seong2.jpg','seong3.jpg','seong4.jpg','seong5.jpg','064','787','0911','11:00','20:00','1980-01-22','성읍민속마을에서 질좋은 흑돼지고기를 먹을 수 있는 곳. 고기를 주문하면 감귤나무초벌구이실에서 노릇하게 초벌되어 나와 맛이 더욱 좋다. 분위기와 반찬 모두 시골의 소박한 맛을 느낄 수 있습니다.');
insert into rest values(resseq.nextval,'바다를본돼지','33.2430993','126.5675955','제주 서귀포시 칠십리로 123','seapig.jpg','seapig2.jpg','seapig3.jpg','seapig4.jpg','seapig5.jpg','0507','1413','1058','12:00','21:00','2015-11-24','제주 토종 흑돼지를 바다를 보며 드실 수 있는 특별한 공간입니다. 점심특선메뉴로 제주흑돼지와 돌솥밥, 해물전복뚝배기도 세트로 특별한 가격에 제공하오니 후회없는 선택이 되시리라 믿습니다.');
insert into rest values(resseq.nextval,'가시아방국수','33.4386160','126.9180650','제주 서귀포시 성산읍 섭지코지로 10','gasiabang.jpg','gasiabang2.jpg','gasiabang3.jpg','gasiabang4.jpg','gasiabang5.jpg','064','783','0987','10:00','20:30','2017-12-10','고기국수, 비빔국수, 멸치국수 등 다양한 국수를 제공하며 가족과 지인 또는 연인과 행복한 식사가 될 수 있도록 노력하겠습니다.');
insert into rest values(resseq.nextval,'제주 판타스틱버거','33.3084898','126.7790718','제주 서귀포시 표선면 토산중앙로15번길 6','fantastic.jpg','fantastic2.jpg','fantastic3.jpg','fantastic4.jpg','fantastic5.jpg','0507','1339','6990','10:00','19:00','2020-11-21','식사 하시는 동안 편안하고 멋진 분위기가 맛을 더한다고 생각해요. 계시는 시간내 가장 편안하게 쉬다 가실수있도록 최선을 다할게요!');
insert into rest values(resseq.nextval,'미스터크랩','33.2894013','126.7514871','제주 서귀포시 남원읍 남태해안로 533','mrcrab.jpg','mrcrab2.jpg','mrcrab3.jpg','mrcrab4.jpg','mrcrab5.jpg','0507','1471','5025','11:30','21:00','2015-06-11','살아있는 랍스터와 킹크랩을 제주도내 유일하게 매장내 실내수족관에서 직접 눈으로 확인가능합니다. 신선함도 직접 확인 가능하시기 때문에 안심하고~ 맛있게~ 즐겁게 식사 가능합니다^^');
insert into rest values(resseq.nextval,'화고 흑돼지','33.2533624','126.5062742','제주 서귀포시 신서로32번길 20','firego.jpg','firego2.jpg','firego3.jpg','firego4.jpg','firego5.jpg','0507','1358','6124','11:00','24:00','2020-07-15','흑돼지 전문점으로써 목살은 부드럽지않고 퍽퍽하다라는 편견을 깨고 보리 볏짚에 한번 초벌하여 잡내가 없고 육즙 가득한 부드러운 목살로 인기가 많습니다.');
insert into rest values(resseq.nextval,'춘미향 제주산방산점','33.2314288','126.2965731','제주 서귀포시 안덕면 산방로 378','chunmi.jpg','chunmi2.jpg','chunmi3.jpg','chunmi4.jpg','chunmi5.jpg','0507','5611','5611','11:30','21:00','2003-03-13','맛있는 갈치조림과 흑돼지 두루치기, 대표메뉴로는 춘미향 정식으로 목살, 딱새우장, 멜조림 등 다양한 음식을 즐겨보세요~');
insert into rest values(resseq.nextval,'제주고로','33.2711473','126.2025341','제주 서귀포시 대정읍 서삼중로 94','goro.jpg','goro2.jpg','goro3.jpg','goro4.jpg','goro5.jpg','0507','1312','9080','11:00','15:30','2017-12-10','작은 퓨전일본 음식점입니다. 여러 종류의 덮밥과 우동을 맛보러 오세요~');
insert into rest values(resseq.nextval,'김녕오라이','33.5577318','126.7552547','제주 제주시 구좌읍 김녕로21길 21','kimnyeong.jpg','kimnyeong2.jpg','kimnyeong3.jpg','kimnyeong4.jpg','kimnyeong5.jpg','064','747','8174','11:30','21:00','2006-05-22','저희 김녕오라이는 최고의 재료를 선별합니다. 많이 와주시는 분들에게 감사하게 생각하며, 항상 신선한 회를 제공하겠습니다.');


commit;


-- 카페 insert

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'하도1940','33.527646','126.882477','제주특별자치도 제주시 구좌읍 해맞이해안로 1681-3','064','782','1940','skip','09:00','17:00','hd1.jpeg','hd2.jpeg','hd3.jpeg','hd4.jpeg','hd5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'아줄레주','33.366747','126.839139','제주 서귀포시 성산읍 신풍하동로19번길 59','0507','1411','4052','skip','11:00','19:00','al1.jpeg','al2.jpeg','al3.jpeg','al4.jpeg','al5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'카페 글렌코','33.433593','126.733503','제주 제주시 구좌읍 비자림로 1202','010','9587','3555','skip','09:30','17:30','gc1.jpeg','gc2.jpeg','gc3.jpeg','gc4.jpeg','gc5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'그계절','33.531853','126.818534','제주특별자치도 제주시 구좌읍 한동로 119','010','3140','3121','skip','11:00','17:30','ts1.jpeg','ts2.jpeg','ts3.jpeg','ts4.jpeg','ts5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'도렐 제주본점','33.449913','126.918557','제주특별자치도 서귀포시 성산읍 동류암로 20 플레이스 내 LOVE동 1층','064','766','3008','skip','08:30','20:00','dr1.jpeg','dr2.jpeg','dr3.jpeg','dr4.jpeg','dr5.jpeg');

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'마노르블랑','33.254876','126.295011','제주특별자치도 서귀포시 안덕면 일주서로2100번길 46 1층','064','794','0999','skip','09:00','18:30','mb1.jpeg','mb2.jpeg','mb3.jpeg','mb4.jpeg','mb5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'인스밀','33.238440','126.229384','제주특별자치도 서귀포시 대정읍 일과대수로27번길 22 1층','010','6844','5661','skip','11:30','18:00','im1.jpeg','im2.jpeg','im3.jpeg','im4.jpeg','im5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'산노루','33.329969','126.213613','제주특별자치도 제주시 한경면 낙원로 32','070','8801','0228','skip','10:00','19:00','snl1.jpeg','snl2.jpeg','snl3.jpeg','snl4.jpeg','snl5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'클랭블루','33.345020','126.177518','제주특별자치도 제주시 한경면 한경해안로 552-22','070','8801','0228','skip','10:00','19:00','cb1.jpeg','cb2.jpeg','cb3.jpeg','cb4.jpeg','cb5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'웨이뷰','33.407265','126.253018','제주특별자치도 제주시 한림읍 옹포7길 25-3','010','5198','8767','skip','09:00','19:00','wv1.jpeg','wv2.jpeg','wv3.jpeg','wv4.jpeg','wv5.jpeg');

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'원앤온리','33.239173','126.319468','제주특별자치도 서귀포시 안덕면 산방로 141','064','794','0117','skip','09:00','20:00','oa1.jpeg','oa2.jpeg','oa3.jpeg','oa4.jpeg','oa5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'베케','33.261861','126.604860','제주특별자치도 서귀포시 효돈로 54','064','732','3828','skip','11:00','18:00','bk1.jpeg','bk2.png','bk3.png','bk4.png','bk5.png');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'더클리프','33.244270','126.415033','제주특별자치도 서귀포시 중문관광로 154-17','064','738','8866','skip','10:00','01:00','tc1.jpeg','tc2.jpeg','tc3.png','tc4.png','tc5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'허니문하우스','33.245919','126.578516','제주특별자치도 서귀포시 칠십리로 228-13','070','4277','9922','skip','10:00','18:00','hmh1.jpeg','hmh2.jpeg','hmh3.jpeg','hmh4.jpeg','hmh5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'서귀다원','33.312877','126.596710','제주특별자치도 서귀포시 516로 717','064','733','0632','skip','09:00','17:00','sg1.jpeg','sg2.jpeg','sg3.jpeg','sg4.jpeg','sg5.jpeg');

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'노티드 제주','33.463284','126.309798','제주특별자치도 제주시 애월읍 애월로1길 24-9','010','4925','9377','skip','10:00','20:00','kt1.jpeg','kt2.jpeg','kt3.jpeg','kt4.jpeg','kt5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'델문도 함덕점','33.543712','126.668826','제주특별자치도 제주시 조천읍 조함해안로 519-10','064','702','0007','skip','07:00','23:55','dmd1.jpeg','dmd2.jpeg','dmd3.jpeg','dmd4.jpeg','dmd5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'오드랑베이커리','33.542061','126.671523','제주특별자치도 제주시 조천읍 조함해안로 552-3','064','784','5404','skip','07:00','22:00','ob1.jpeg','ob2.jpeg','ob3.jpeg','ob4.jpeg','ob5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'아베베베이커리 제주점','33.512632','126.528865','제주특별자치도 제주시 동문로6길 4','010','8857','0750','skip','10:00','21:00','ab1.jpeg','ab2.jpeg','ab3.jpeg','ab4.jpeg','ab5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'모알보알 제주','33.559502','126.728020','제주특별자치도 제주시 구좌읍 구좌해안로 141','0507','1312','3506','skip','10:00','17:30','mbj1.jpeg','mbj2.jpeg','mbj3.jpeg','mbj4.jpeg','mbj5.jpeg');

Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'라마다 프라자 제주 호텔','138,162','라마다호텔 1.jpg','라마다호텔 2.jpg','라마다호텔 3.jpg','라마다호텔 4.jpg','라마다호텔 5.jpg','라마다호텔 6.jpg','제주 제주시 탑동로 66','064-729-8100','무료 Wi-Fi,실내 수영장,사우나,스파,피트니스 센터','주차 및 Wi-Fi가 항상 무료로 제공되므로 언제든지 차량을 입출차할 수 있으며 연락을 취하실 수 있습니다. 제주 시내에 위치해 있어 현지 명소 및 관광지와 인접해 있습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 별 5개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑, 실내 수영장 및 피트니스 센터을/를 제공합니다.','Superior Twin Mountain View','Mountain View Twin ','Superior Family Twin','Deluxe Twin Ocean View','161,594','166,780','161,594','169,470','33.518500','126.518524');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'제주 오리엔탈 호텔 앤 카지노','100,184','제주 오리엔탈 호텔1.jpg','제주 오리엔탈 호텔 2.jpg','제주 오리엔탈 호텔 3.jpg','제주 오리엔탈 호텔 4.jpg','제주 오리엔탈 호텔 5.jpg','제주 오리엔탈 호텔 6.jpg','제주 제주시 탑동로 47','064-752-8222','사우나,무료 주차,룸서비스','주차 및 Wi-Fi가 항상 무료로 제공되므로 언제든지 차량을 입출차할 수 있으며 연락을 취하실 수 있습니다. 제주 시내에 위치해 있어 현지 명소 및 관광지와 인접해 있습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 별 5개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑, 온천탕 및 피트니스 센터을/를 제공합니다.','Standart Twin','Deluxe Twin Mountain View','Deluxe Twin Ocean View','Standard Room with City View','100,184','118,734','118,734','220,907','33.517315','126.519721');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'호텔 리젠트 마린 제주','259,508','호텔 리젠트 마린 제주1.jpg','호텔 리젠트 마린 제주2.jpg','호텔 리젠트 마린 제주5.jpg','호텔 리젠트 마린 제주2.jpg','호텔 리젠트 마린 제주4.jpg','호텔 리젠트 마린 제주6.jpg','제주 제주시 서부두2길 20','02-777-5080','야외 수영장,24시간 프런트 데스크','주차 및 Wi-Fi가 항상 무료로 제공되므로 언제든지 차량을 입출차할 수 있으며 연락을 취하실 수 있습니다. 제주 시내에 위치해 있어 현지 명소 및 관광지와 인접해 있습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 별 4개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑, 피트니스 센터 및 실외 수영장을/를 제공합니다.',' Standard Double Room with City View','Superior Twin','Deluxe Double','Standard Twin City View','259,508','300,680','313,200','333,580','33.517651','126.526846');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'엠버호텔 제주','198,182','엠버호텔1.jpg','엠버호텔2.jpg','엠버호텔3.jpg','엠버호텔4.jpg','엠버호텔5.jpg','엠버호텔6.jpg','제주 제주시 삼무로 12','064-745-7458','무료 Wi-Fi,24시간 프런트 데스크,레스토랑','모든 객실 내 무료 Wi-Fi이/가 제공되는 이 숙소에서 즐거운 여행을 시작하세요. 제주 시내에 위치해 있어 현지 명소 및 관광지와 인접해 있습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 본 4성급 숙소는 보다 훌륭하고 기억에 남는 숙박을 제공하기 위해 레스토랑을/를 갖추고 있습니다.',' Standard Double Room - No Parking','Deluxe Twin Room - No Parking',' Deluxe Family Room - No Parking','Premium Deluxe Room - No Parking','198,182','231,818','254,525','282,645','33.489814','126.487717');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'호텔 샬롬 제주 ','150,638','호텔 샬롬 제주1.jpg','호텔 샬롬 제주2.jpg','호텔 샬롬 제주3.jpg','호텔 샬롬 제주4.jpg','호텔 샬롬 제주5.jpg','호텔 샬롬 제주6.jpg','제주 제주시 동광로 34','064-720-7704','무료 Wi-Fi,무료 주차,24시간 프런트 데스크',' 주차 및 Wi-Fi가 항상 무료로 제공되므로 언제든지 차량을 입출차할 수 있으며 연락을 취하실 수 있습니다. 제주 시내에 위치해 있어 현지 명소 및 관광지와 인접해 있습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 본 4성급 숙소는 숙박의 질과 즐거움을 향상시키기 위한 숙소 내 다양한 편의시설로 가득 차 있습니다','Deluxe Twin','디럭스 패밀리룸 (Deluxe Family Room) ','싱글룸 (Single Room)','Junior Double','150,638','155,173','120,273','155,755','33.501884','126.532663');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'해비치 호텔 앤 리조트 제주','254,962','해비치 호텔 앤 리조트 제주1.jpg','해비치 호텔 앤 리조트 제주2.jpg','해비치 호텔 앤 리조트 제주3.jpg','해비치 호텔 앤 리조트 제주4.jpg','해비치 호텔 앤 리조트 제주5.jpg','해비치 호텔 앤 리조트 제주6.jpg','제주 서귀포시 표선면 민속해안로 537','064-780-8100','실내 수영장,무료 주차,24시간 프런트 데스크',' 제주의 성산에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 별 5개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑, 실내 수영장 및 피트니스 센터를 제공합니다.','Hotel Superior Village View Twin Room','Hotel Superior Village View King Room','Hotel Deluxe Seaside Twin Room','Hotel Deluxe Seaside King Room','295,333','262,212','303,167','394,698','33.323129','126.844781');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'카세로지 (Kaselodge)','1,282,116','카세로지 (Kaselodge)1.jpg','카세로지 (Kaselodge)2.jpg','카세로지 (Kaselodge)3.jpg','카세로지 (Kaselodge)4.jpg','카세로지 (Kaselodge)5.jpg','카세로지 (Kaselodge)6.jpg','제주 서귀포시 표선면 가시로 383','064-780-4800','무료 Wi-Fi,실내 수영장,사우나,조식 포함,24시간 프런트 데스크,레스토랑','제주의 성산에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 본 5성급 숙소는 숙박의 질과 즐거움을 향상시키기 위한 숙소 내 다양한 편의시설로 가득 차 있습니다.','가든 스파 스위트 (Garden Spa Suite)','스위트룸 - 테라스 (Suite with Terrace)','스위트룸 - 스파 욕조 (Suite with Spa Bath)','스위트룸 - 씨뷰 (Suite with Sea)','1,454,545','1,282,116','1,282,116','1,454,545','33.345552','126.786996');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'리시온 호텔 (Rezion Hotel)','149,999','리시온 호텔 (Rezion Hotel)1.jpg','리시온 호텔 (Rezion Hotel)2.jpg','리시온 호텔 (Rezion Hotel)3.jpg','리시온 호텔 (Rezion Hotel)4.jpg','리시온 호텔 (Rezion Hotel)5.jpg','리시온 호텔 (Rezion Hotel)6.jpg','제주 서귀포시 표선면 표선동서로 263','064-787-8841','24시간 프런트 데스크,룸서비스','제주의 성산에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 떠나기 전 유명한 성산일출봉을 방문해 보세요. 보다 나은 숙박을 위해 레스토랑 및 마사지 등 숙소 내 특별한 편의시설이 제공됩니다.','Ocean View Double','Superior - Non-Smoking','Ocean Twin',' Haevichi Ocean View ','149,999','149,683','152,047','152,727','33.327163','126.833695');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'제이앤비 호텔 (JnB Hotel)','142,924','제이앤비 호텔 (JnB Hotel)1.jpg','제이앤비 호텔 (JnB Hotel)2.jpg','제이앤비 호텔 (JnB Hotel)3.jpg','제이앤비 호텔 (JnB Hotel)4.jpg','제이앤비 호텔 (JnB Hotel)5.jpg','제이앤비 호텔 (JnB Hotel)6.jpg','제주 서귀포시 토평남로30번길 10-12','0507-1432-8864','무료 Wi-Fi,야외 수영장,무료 주차','제주의 서귀포에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 본 3성급 숙소는 보다 훌륭하고 기억에 남는 숙박을 제공하기 위해 실외 수영장을  갖추고 있습니다.','Superior Double Room','Superior Triple','Superior Double Room','Family Suite','142,924','155,884','182,245','285,349','33.260598','126.592679');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'머큐어 앰배서더 제주','144,000','머큐어 앰배서더 제주1.jpg','머큐어 앰배서더 제주2.jpg','머큐어 앰배서더 제주3.jpg','머큐어 앰배서더 제주4.jpg','머큐어 앰배서더 제주5.jpg','머큐어 앰배서더 제주6.jpg','제주 서귀포시 안덕면 한창로 365','064-793-1131','실내 수영장,사우나,룸서비스,스파,피트니스 센터','제주의 중문에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 별 4개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑, 피트니스 센터 및 실외 수영장을 제공합니다.','Deluxe Room',' Parlor Room','Deluxe Suite','Executive Suite','144,000','230,000','243,000','279,000','33.293809','126.348992');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'제주신라호텔','338,800','신라호텔5.jpg','신라호텔1.jpg','신라호텔2.jpg','신라호텔3.jpg','신라호텔4.jpg','신라호텔6.jpg','제주 서귀포시 중문관광로72번길 75','064-735-1234','무료 Wi-Fi,야외 수영장,레스토랑,피트니스 센터','신라호텔의 야외 수영장은 무료로 이용 가능하며, 실내 수영장, 피트니스 센터와 사우나는 추가 요금으로 이용하실 수 있습니다. 어린이 수영장과 놀이방 등 어린이를 위한 실내 및 야외 활동도 다양하게 제공됩니다. 유모차는 무료로 대여하실 수 있습니다.','Standard Double Room(Mountain view)','Standard Twin Room(Sea view)','Standard Twin Room(Mountain view)','Standard Double Room(Mountain view)','338,800 원','338,800 원','371,800 원','371,800 원','33.247881','126.408438');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'라마다 프라자 제주 호텔','160,000','라마다호텔 1.jpg','라마다호텔 2.jpg','라마다호텔 3.jpg','라마다호텔 4.jpg','라마다호텔 5.jpg','라마다호텔 6.jpg','제주특별자치도 제주시 삼도이동 1254','064-729-8100','무료 Wi-Fi,실내 수영장,조식 포함,레스토랑,피트니스 센터','라마다프라자호텔은 전 세계 8,000여 개 라마다 브랜드 호텔 중 최상위등급 호텔 입니다 제주도 최초 5성 호텔로 투숙 고객님께 최상의 시설과 서비스를 보장 합니다 동급 호텔 대비 큰 객실을 제공하고 있어 편안한 휴식이 가능합니다','Superior Twin City view','Kids Sweet Mountain view','Habor Familiy Twin','Superior Twin Sea view','160,000','200,000','230,000 ','220,000','33.493483','126.534319');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'서머셋 제주신화월드','408,000','서머셋 제주신화월드1.jpg','서머셋 제주신화월드2.jpg','서머셋 제주신화월드3.jpg','서머셋 제주신화월드4.jpg','서머셋 제주신화월드5.jpg','서머셋 제주신화월드6.jpg','제주 서귀포시 안덕면 신화역사로304번길 89','1670-8800','무료 Wi-Fi,야외 수영장,무료 주차,조식 포함,룸서비스,스파','Ascott Cares 인증 기준 외에도 모든 투숙객은 모든 객실 내 무료 Wi-Fi 및 차를 운전해서 오실 경우 무료 주차를 이용하실 수 있습니다. ','Family Suite Ondol ',' Camping in Somerset Kids Room','Family Suite ','Racing in Somerset Kids Room ','408,000','435,000','462,000','494,130','33.302674','126.316952');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'메리어트 호텔 제주','236,667','메리어트 호텔 제주1.jpg','메리어트 호텔 제주2.jpg','메리어트 호텔 제주3.jpg','메리어트 호텔 제주4.jpg','메리어트 호텔 제주5.jpg','메리어트 호텔 제주6.jpg','제주 서귀포시 안덕면 신화역사로304번길','1670-8800','야외 수영장,무료 주차,룸서비스,스파','각 객실에는 안전 금고, 미니바, 평면 TV, 책상이 구비되어 있습니다. 전용 욕실에는 욕조가 설치되어 있으며, 목욕 가운, 헤어드라이어, 탄(Thann) 브랜드의 욕실용품이 제공됩니다.','Premier Room, Guest room','Premier Room, Guest room, 2 Twins','Family Room, Family room','Bedroom Presidential Suite','236,667','316,667','316,666','424,552','33.306580','126.318973');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'제주 핀크스 포도 호텔','380,165','제주 핀크스 포도 호텔1.jpg','제주 핀크스 포도 호텔2.jpg','제주 핀크스 포도 호텔3.jpg','제주 핀크스 포도 호텔4.jpg','제주 핀크스 포도 호텔5.jpg','제주 핀크스 포도 호텔6.jpg','제주 서귀포시 안덕면 산록남로 863','064-793-7000','무료 주차,24시간 프런트 데스크','제주의 중문에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다.','Deluxe Twin Western Room','Deluxe Twin Korean Room','Deluxe Double Western Room','Deluxe Double Korean Room','380,165','442,149','429,752','483,471','33.317717','126.387567');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'디아일랜드블루 호텔','190,409','디아일랜드블루 호텔1.jpg','디아일랜드블루 호텔2.jpg','디아일랜드블루 호텔3.jpg','디아일랜드블루 호텔4.jpg','디아일랜드블루 호텔5.jpg','디아일랜드블루 호텔6.jpg','제주 서귀포시 태평로431번길 3','064-762-6532','레스토랑,룸서비스,스파','제주의 서귀포에 위치한 본 숙소는 관광 명소 및 흥미로운 레스토랑과 가깝습니다. 떠나기 전 유명한 성산일출봉을/를 방문해 보세요. 별 4개를 받은 본 고급 숙소는 투숙객에게 숙소 내 레스토랑 및 마사지을/를 제공합니다.','Island Double Room','Premier Family Suite ',' Premier Family Suite','Premier Family Suite Cooking Allowed','190,409','290,044','143,264','300,260','33.245726','126.565768');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'더 베스트 제주 성산','147,328','더 베스트 제주 성산1.jpg','더 베스트 제주 성산2.jpg','더 베스트 제주 성산3.jpg','더 베스트 제주 성산4.jpg','더 베스트 제주 성산5.jpg','더 베스트 제주 성산6.jpg','제주 서귀포시 성산읍 동류암로 26','0507-1401-0550','실내 수영장,룸서비스,피트니스 센터','대형 창문이 설치된 모든 객실은 커피 테이블이 구비된 휴식 공간 및 업무용 책상을 갖추고 있습니다. 객실마다 커피/차 및 생수도 제공됩니다. 전용 욕실에는 전자 비데가 설치된 화장실, 워크인 샤워 시설이 마련되어 있습니다.','Standard Twin Room','Jacuzzi 1 King Bed','Standard Double Room','Standard Twin Room','147,328','150,000','152,052','161,490','33.449166','126.916523');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'제주 스테이 인 성산','134,633','제주 스테이 인 성산1.jpg','제주 스테이 인 성산2.jpg','제주 스테이 인 성산3.jpg','제주 스테이 인 성산4.jpg','제주 스테이 인 성산5.jpg','제주 스테이 인 성산6.jpg','제주 서귀포시 성산읍 신고로 11','0507-1374-8877','무료 Wi-Fi,무료 주차,레스토랑','투숙객 요구를 편리하게 충족시킬 수 있도록 숙소 내 레스토랑을 제공합니다.','Deluxe Double','Deluxe Twin','Standard Double','Standard twin','134,633','153,636','142,360','152,480','33.437695','126.916358');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'골든튤립 제주 성산 호텔','147,530','골든튤립 제주 성산 호텔1.jpg','골든튤립 제주 성산 호텔2.jpg','골든튤립 제주 성산 호텔3.jpg','골든튤립 제주 성산 호텔4.jpg','골든튤립 제주 성산 호텔5.jpg','골든튤립 제주 성산 호텔6.jpg','제주 서귀포시 성산읍 일출로 31','064-744-7500','무료 Wi-Fi,야외 수영장,레스토랑','투숙객에게 숙소 내 레스토랑 및 실외 수영장을 제공합니다.','Superior Twin','Deluxe Triple','Deluxe Family City View','Superior Twin','147,530','183,335','178,090','190,338','33.447933','126.916229');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'해일리 풀 앤 스파 호텔','165,132','해일리 풀 앤 스파 호텔1.jpg','해일리 풀 앤 스파 호텔2.jpg','해일리 풀 앤 스파 호텔3.jpg','해일리 풀 앤 스파 호텔4.jpg','해일리 풀 앤 스파 호텔5.jpg','해일리 풀 앤 스파 호텔6.jpg','제주 서귀포시 성산읍 한도로 269-37 해일리호텔','0507-1418-0131','무료 Wi-Fi,무료 주차,24시간 프런트 데스크','제주 동쪽 최고의 절경을 감상하시며 해일리풀앤스파 호텔 에 도착하실수 있습니다','POOL VILLA STANDARD','SUITE POOL VILLA','POOL VILLA SUITE','POOL VILLA TWIN','165,132','182,645','214,674','189,899','33.469066','126.935343');



Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'kihun@naver.com','123123','김기현','2023-12-18','제주특별자치도 제주시 첨단로 242','123호','010-0000-0000',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'3233035756','3233035756','김노아','2023-12-13','제주특별자치도 제주시 첨단로 242','123호','010-0000-0000',5);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'chajun@naver.com','123123','차준호','2023-12-14','경기 성남시 분당구 판교역로10번길 16','231호','010-2222-2222',5);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'abc@naver.com','123123','김민수','2020-01-01','충남 보령시 미산면 금당길 30','금당아파트 1동 101호','010-0000-0000',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'asd@naver.com','123123','김태양','2022-05-12','경기 안성시 대덕면 보머리길 8','푸르지오 1동 101호','010-1234-1234',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'3247975079','3247975079','채훈','2021-08-28','경기 평택시 안중읍 성해홍원로 64','푸르지오 1동 101호','010-1234-1234',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'asdf@daum.net','asdf1234','홍길동','2023-12-30','제주특별자치도 제주시 첨단로 242','asdf','010-1234-5678',8);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'zxcv@nate.com','zxcv1234','채연','2023-12-06','경기 성남시 분당구 판교역로 166','카카오 판교 아지트','010-9876-5432',7);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'jh7286@gmail.com','Junhyeong5897','이준형','1999-11-17','인천 중구 하늘별빛로 66','902동 3003호','010-2873-7206',4);


Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'차준호','4박5일 가족여행',to_date('23/12/30','RR/MM/DD'),1,'가족들이랑 함께한 가족여행 완전 알찬 나날들이고 호텔이고 맛집 다 좋았어요','0:0:0:0:0:0:0:1','al1.jpeg','chajun@naver.com','1','2024-2-25',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'차준호','친구랑 1박2일 여행',to_date('23/12/30','RR/MM/DD'),0,'맛집여행 완전 너무 맛있었다 특히 흑돼지 굳굳','0:0:0:0:0:0:0:1','chunje5.jpeg','chajun@naver.com','2','2024-1-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'차준호','즉흥 당일치기',to_date('23/12/30','RR/MM/DD'),0,'갑자기 제주도 가고 싶어서 떠난 당일치기 여행 너무 행복한 즉흥 여행이었다','0:0:0:0:0:0:0:1','nok1.jpeg','chajun@naver.com','3','2024-1-14',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김기현','3박4일간의 p들의 여행',to_date('23/12/30','RR/MM/DD'),4,'친구들이 다 p지만 나만 믿고 따라와의 자동여행으로 가고 싶은곳을  위치별로 선택해서 완전 계획짜기 너무 좋았다','0:0:0:0:0:0:0:1','handam4.jpeg','kihun@naver.com','1','2024-1-17',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김기현','맛있는거 먹으러 간 제주도',to_date('23/12/30','RR/MM/DD'),0,'배고파서 급하게 나만 믿고 따라와로 계획 빠르게 짜고 떠났다 ㅎ','0:0:0:0:0:0:0:1','road2.jpeg','kihun@naver.com','2','2024-2-12',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김기현','국수 먹으러간 1박2일',to_date('23/12/30','RR/MM/DD'),0,'제주도 하면 고기 국수지 ㅎㅎ','0:0:0:0:0:0:0:1','hello.jpg','kihun@naver.com','3','2024-1-16',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김노아','험난했던 드라이브 여행',to_date('23/12/30','RR/MM/DD'),0,'가고 싶은 곳 마구마구 넣어서 계획해서 하루종일 드라이브 여행 했다 ㅎ','0:0:0:0:0:0:0:1','nok2.jpeg','3233035756','1','2024-1-24',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김노아','일주일간의 제주도 생활이자 여행',to_date('23/12/30','RR/MM/DD'),0,'제주도 생활 하긴전에 맛보기로 일주일간 제주도에 있었다 ㅎㅎ','0:0:0:0:0:0:0:1','9.81p0.jpeg','3233035756','2','2024-1-14',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김노아','1박2일 여행',to_date('23/12/30','RR/MM/DD'),0,'맛있는거 왕 많은 제주도 담에 또 와야지 ㅎ','0:0:0:0:0:0:0:1','제주 스테이 인 성산1.jpg','3233035756','3','2024-1-1',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김민수','행복한 제주도 여행~',to_date('23/12/30','RR/MM/DD'),7,'여행 갈 수 있는 기회가 생겨서 제주도로 여행 갔다 왔어요.
너무 즐거운 여행을 하고왔어요~','0:0:0:0:0:0:0:1','9.81p1.jpeg','abc@naver.com','1','2024-1-24',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김민수','7일간 떠나는 제주도',to_date('23/12/30','RR/MM/DD'),1,'일주일 간 제주도로 여행을 떠났어요. 많은 곳을 구경하고 체험도 하며
즐거운 날들을 보내고 왔어요','0:0:0:0:0:0:0:1','chunje1.jpeg','abc@naver.com','2','2024-1-2',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김민수','휴식 여행',to_date('23/12/30','RR/MM/DD'),1,'쉬는 날에 제주도로 여행을 갔다 왔어요. 제주도에서 많이 힐링하며 행복한 여행을 즐기고 왔습니다~','0:0:0:0:0:0:0:1','handam5.jpeg','abc@naver.com','3','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김태양','쉬는 날 떠나는 여행~',to_date('23/12/30','RR/MM/DD'),2,'주말에 제주도로 여행을 다녀왔는데 너무 행복한 주말이였어요.
다음에도 기회가 되면 다녀와야겠어요 ㅎㅎ','0:0:0:0:0:0:0:1','dudo2.jpeg','asd@naver.com','1','2024-2-17',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김태양','가족과 함께 떠나는 여행',to_date('23/12/30','RR/MM/DD'),0,'가족과 시간이 맞아서 제주도로 여행 다녀왔어요.
너무 좋은 시간을 보냈고 많은 관광지도 돌아다니며, 맛있는 음식도 먹었어요.
제주도 여행 강추합니다!','0:0:0:0:0:0:0:1','mb1.jpeg','asd@naver.com','2','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'김태양','여행은 언제나 행복해',to_date('23/12/30','RR/MM/DD'),0,'목적지는 제주도!
이 사이트를 통해 여정을 추천 받아서 제주도 여행을 다녀왔어요.
일정이 너무 좋고, 맛있는 음식과 많은 관광지도 구경하며 좋은 시간 보내고 왔어요 ㅎㅎ','0:0:0:0:0:0:0:1','hunje3.jpeg','asd@naver.com','3','2024-1-24',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'채훈','친구들과 함께하는 제주도 여행',to_date('23/12/30','RR/MM/DD'),0,'친구들과 오랜만에 만나서 제주도로 놀러왔어요.
바다도 보고, 맛집도 가고, 너무 즐거운 시간 보내고 왔어요~','0:0:0:0:0:0:0:1','kimne2.jpeg','3247975079','1','2024-2-23',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'채훈','여행은 계획대로!',to_date('23/12/30','RR/MM/DD'),0,'계획을 정하고 제주도로 여행을 다녀왔어요.
너무 행복한 시간을 보냈고, 많은 체험과 관광지도 구경하고, 다음에 기회가 되면 또 다시 놀러 가고 싶네요 ㅎㅎ','0:0:0:0:0:0:0:1','borim3.jpeg','3247975079','2','2024-1-1',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'채훈','짧은 시간이지만 행복했다.',to_date('23/12/30','RR/MM/DD'),0,'2일이라는 짧은 시간 동안 제주도로 떠난 여행 많은 곳을 돌아다니며 구경을 하고, 맛있는 음식도 먹고, 카페도 다녔지만 시간이 너무 짧아서 아쉬운 여행이였어요.
다음 여행은 일정을 길게 잡고 편안하게 갔다 올 거에요!','0:0:0:0:0:0:0:1','road2.jpeg','3247975079','3','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'이준형','하루는 제주, 하루는 서귀포',to_date('23/12/30','RR/MM/DD'),0,'하루만에 남북을 찍어보아요~^^','0:0:0:0:0:0:0:1','2.png','jh7286@gmail.com','1','2024-1-3',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'이준형','먹으러 다니는 제주 여행',to_date('23/12/30','RR/MM/DD'),0,'제목 그대로 먹으로 다니는 제주 여행~!','0:0:0:0:0:0:0:1','ts2.jpeg','jh7286@gmail.com','3','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'이준형','새해엔 제주에서',to_date('23/12/30','RR/MM/DD'),0,'갑진년 새해엔 제주에서 보내요~','0:0:0:0:0:0:0:1','handam5.jpeg','jh7286@gmail.com','2','2024-1-1',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'홍길동','제주도 여정에 몸을 맡긴다!!!',to_date('23/12/30','RR/MM/DD'),3,'제곧내','0:0:0:0:0:0:0:1','camel5.jpeg','asdf@daum.net','4','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'홍길동','놀고 먹고 즐기고 렛츠고~!',to_date('23/12/30','RR/MM/DD'),0,'라임 지렸다....','0:0:0:0:0:0:0:1','subji3.jpeg','asdf@daum.net','2','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'홍길동','동서남북 번쩍번쩍',to_date('23/12/30','RR/MM/DD'),0,'나믿따가 지닌 장소엔 언제나 핫플이다...','0:0:0:0:0:0:0:1','sangum1.jpeg','asdf@daum.net','1','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'채연','난 ㄱㅏ끔... 힐링을 떠난ㄷㅏ...',to_date('23/12/30','RR/MM/DD'),0,'어디로... 제주로 떠난ㄷㅏ...','0:0:0:0:0:0:0:1','bija0.jpeg','zxcv@nate.com','4','2024-1-14',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'채연','난나나나 난난 나나나나 쏴~',to_date('23/12/30','RR/MM/DD'),0,'제주로 쏴~~~~','0:0:0:0:0:0:0:1','chunje4.jpeg','zxcv@nate.com','3','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'채연','제주도 여행 어디로 가지?',to_date('23/12/30','RR/MM/DD'),0,'두뇌 풀가동은 내가 아닌 나믿따로!','0:0:0:0:0:0:0:1','camel1.jpeg','zxcv@nate.com','1','2024-1-10',null,0);




Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.382195','126.842141','spot',34,'3','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.484152','126.806472','spot',31,'4','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.4386160','126.9180650','restaurant',20,'14','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.51616','126.512057','spot',22,'6','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.437695','126.916358','hotel',18,'1','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.449913','126.918557','restaurant',5,'2','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.260598','126.592679','hotel',9,'1','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.312877','126.59671','restaurant',15,'2','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.308686','126.633805','spot',32,'3','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.24427','126.415033','restaurant',13,'4','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.239173','126.319468','cafe',11,'15','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3233035756',null,'33.4922831','126.4726527','restaurant',2,'6','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.489814','126.487717','hotel',4,'1','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.4999552','126.5070561','restaurant',4,'2','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.511505','126.5200319','restaurant',10,'3','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.5149090722','126.5137903112','spot',6,'4','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.329969','126.213613','cafe',8,'16','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.51616','126.512057','spot',22,'6','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.513308','126.52828','spot',9,'7','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.509252','126.472057','spot',14,'8','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.345552','126.786996','hotel',7,'1','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.3534854','126.7718273','restaurant',6,'2','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.3892433','126.8011784','restaurant',18,'3','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.382195','126.842141','spot',34,'4','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.424191','126.931154','spot',10,'17','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.484152','126.806472','spot',31,'6','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.531853','126.818534','restaurant',4,'7','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.5324891','126.8502082','restaurant',13,'8','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.260598','126.592679','hotel',9,'1','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.2430993','126.5675955','restaurant',19,'2','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.2533624','126.5062742','restaurant',23,'3','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.2556752','126.4146427','restaurant',5,'4','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.542061','126.671523','cafe',18,'18','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.24427','126.415033','restaurant',13,'6','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.231949','126.314639','spot',30,'7','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.2314288','126.2965731','restaurant',24,'8','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.317717','126.387567','hotel',15,'1','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.38978','126.366461','spot',26,'2','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.4784355','126.3669405','restaurant',8,'3','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.4645313','126.308823','restaurant',15,'4','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.469066','126.935343','hotel',20,'19','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.393919','126.240425','spot',11,'6','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.3866186','126.2250355','restaurant',11,'7','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.34334','126.174012','spot',23,'8','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.317717','126.387567','hotel',15,'1','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.305732','126.289684','spot',12,'2','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.23844','126.229384','restaurant',7,'3','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.3086406','126.1802146','restaurant',7,'4','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.4915195','126.4972577','restaurant',12,'20','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.4985643','126.458788','restaurant',9,'6','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.543712','126.668826','restaurant',17,'7','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.559502','126.72802','restaurant',20,'8','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.317717','126.387567','hotel',15,'1','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.308686','126.633805','spot',32,'2','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.2894013','126.7514871','restaurant',22,'3','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.3084898','126.7790718','restaurant',21,'4','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.261861','126.604860','cafe',12,'21','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.438616','126.918065','restaurant',20,'6','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.458053','126.941774','spot',8,'7','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.4707177','126.917191','restaurant',16,'8','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.317717','126.387567','hotel',15,'1','2024-1-20');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3233035756',null,'33.536500525644','126.77281988401','spot',7,'2','2024-1-20');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.463284','126.309798','cafe',16,'22','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.4922831','126.4726527','restaurant',2,'6','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.449913','126.918557','cafe',5,'7','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.4915195','126.4972577','restaurant',12,'8','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.531853','126.818534','cafe',4,'9','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.343340','126.174012','spot',23,'10','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.254876','126.295011','cafe',6,'11','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.536500525644','126.77281988401','spot',7,'23','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.447933','126.916229','hotel',19,'13','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3233035756',null,'33.245919','126.578516','cafe',14,'24','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.306580','126.318973','hotel',14,'1','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.305732','126.289684','spot',12,'2','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.329969','126.213613','restaurant',8,'3','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.34502','126.177518','restaurant',9,'4','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.34334','126.174012','spot',23,'5','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.393919','126.240425','spot',11,'6','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.4645313','126.308823','restaurant',15,'7','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.4985643','126.458788','restaurant',9,'8','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.4788707','126.4640837','restaurant',14,'9','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.4915195','126.4972577','restaurant',12,'10','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.306580','126.318973','hotel',14,'1','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.2314288','126.2965731','restaurant',24,'2','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.2592174','126.4057641','restaurant',17,'3','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.24427','126.415033','restaurant',13,'4','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.2430993','126.5675955','restaurant',19,'5','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.261861','126.60486','restaurant',12,'6','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.3084898','126.7790718','restaurant',21,'7','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.413417','126.752801','spot',24,'8','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.438616','126.918065','restaurant',20,'9','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'kihun@naver.com',null,'33.424191','126.931154','spot',10,'10','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.447933','126.916229','hotel',19,'1','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.4922831','126.4726527','restaurant',2,'2','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.4784355','126.3669405','restaurant',8,'3','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.407265','126.253018','restaurant',10,'4','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.365369','126.256657','spot',13,'5','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.289751','126.368116','spot',16,'6','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.2556752','126.4146427','restaurant',5,'7','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'kihun@naver.com',null,'33.239173','126.319468','restaurant',11,'8','2024-2-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.447933','126.916229','hotel',19,'1','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.438616','126.918065','restaurant',20,'2','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.366747','126.839139','restaurant',2,'3','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.3892433','126.8011784','restaurant',18,'4','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.3084898','126.7790718','restaurant',21,'5','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.2894013','126.7514871','restaurant',22,'6','2024-1-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.517315','126.519721','hotel',2,'1','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.511505','126.5200319','restaurant',10,'2','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.4985643','126.458788','restaurant',9,'3','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.4645313','126.308823','restaurant',15,'4','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.407265','126.253018','restaurant',10,'5','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.3866186','126.2250355','restaurant',11,'6','2024-1-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.517315','126.519721','hotel',2,'1','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.542061','126.671523','restaurant',18,'2','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.312877','126.59671','restaurant',15,'3','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.245919','126.578516','restaurant',14,'4','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.252186','126.418423','spot',17,'5','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.254876','126.295011','restaurant',6,'6','2024-1-19');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.517315','126.519721','hotel',2,'1','2024-1-20');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.34502','126.177518','restaurant',9,'2','2024-1-20');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.3086406','126.1802146','restaurant',7,'3','2024-1-20');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'kihun@naver.com',null,'33.23844','126.229384','restaurant',7,'4','2024-1-20');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'chajun@naver.com',null,'33.5115050','126.5200319','restaurant',10,'25','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'chajun@naver.com',null,'33.3866186','126.2250355','restaurant',11,'26','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'chajun@naver.com',null,'33.261861','126.604860','cafe',12,'27','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.293809','126.348992','hotel',10,'1','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'chajun@naver.com',null,'33.239173','126.319468','cafe',11,'29','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'chajun@naver.com',null,'33.431593','126.690018','spot',27,'34','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'chajun@naver.com',null,'33.254876','126.295011','cafe',6,'35','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.305732','126.289684','spot',12,'2','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.365369','126.256657','spot',13,'3','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.393919','126.240425','spot',11,'4','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.3866186','126.2250355','restaurant',11,'5','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.407265','126.253018','restaurant',10,'6','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.4645313','126.308823','restaurant',15,'7','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.509252','126.472057','spot',14,'8','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.513308','126.52828','spot',9,'9','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.261861','126.60486','restaurant',12,'10','2024-1-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.293809','126.348992','hotel',10,'1','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.2592174','126.4057641','restaurant',17,'2','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.24427','126.415033','restaurant',13,'3','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.2533624','126.5062742','restaurant',23,'4','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.2430993','126.5675955','restaurant',19,'5','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.239173','126.319468','restaurant',11,'6','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.2314288','126.2965731','restaurant',24,'7','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.2711473','126.2025341','restaurant',25,'8','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.34334','126.174012','spot',23,'9','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'chajun@naver.com',null,'33.34502','126.177518','restaurant',9,'10','2024-1-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.323129','126.844781','hotel',6,'1','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.366747','126.839139','restaurant',2,'2','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.3892433','126.8011784','restaurant',18,'3','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.3534854','126.7718273','restaurant',6,'4','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.3084898','126.7790718','restaurant',21,'5','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.2894013','126.7514871','restaurant',22,'6','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.394689','126.684529','spot',21,'7','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.261861','126.60486','restaurant',12,'8','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.2430993','126.5675955','restaurant',19,'9','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.493483','126.534319','hotel',12,'1','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.513308','126.52828','spot',9,'2','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.511505','126.5200319','restaurant',10,'3','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4999552','126.5070561','restaurant',3,'4','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4999552','126.5070561','restaurant',4,'5','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4915195','126.4972577','restaurant',12,'6','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4922831','126.4726527','restaurant',2,'7','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4985643','126.458788','restaurant',9,'8','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.509252','126.472057','spot',14,'9','2024-2-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.306580','126.318973','hotel',14,'1','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.305732','126.289684','spot',12,'2','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.254876','126.295011','restaurant',6,'3','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.239173','126.319468','restaurant',11,'4','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.2592174','126.4057641','restaurant',17,'5','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.2556752','126.4146427','restaurant',5,'6','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.2454605','126.5613681','restaurant',1,'7','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.248618','126.564149','spot',18,'8','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4788707','126.4640837','restaurant',14,'9','2024-2-27');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.306580','126.318973','hotel',14,'1','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.365369','126.256657','spot',13,'2','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.393919','126.240425','spot',11,'3','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.3866186','126.2250355','restaurant',11,'4','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.407265','126.253018','restaurant',10,'5','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4645313','126.308823','restaurant',15,'6','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4784355','126.3669405','restaurant',8,'7','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.329969','126.213613','restaurant',8,'8','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.34502','126.177518','restaurant',9,'9','2024-2-28');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.306580','126.318973','hotel',14,'1','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.23844','126.229384','restaurant',7,'2','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.3086406','126.1802146','restaurant',7,'3','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.558104','126.759499','spot',20,'4','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.5324891','126.8502082','restaurant',13,'5','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.4707177','126.917191','restaurant',16,'6','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.458053','126.941774','spot',8,'7','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'chajun@naver.com',null,'33.438616','126.918065','restaurant',20,'8','2024-2-29');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.517651','126.526846','hotel',3,'1','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.433593','126.733503','restaurant',3,'2','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.381479','126.787077','spot',33,'3','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.3892433','126.8011784','restaurant',18,'4','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.3084898','126.7790718','restaurant',21,'5','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.2894013','126.7514871','restaurant',22,'6','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.2430993','126.5675955','restaurant',19,'7','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.489814','126.487717','hotel',4,'1','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.2533624','126.5062742','restaurant',23,'2','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.2592174','126.4057641','restaurant',17,'3','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.231949','126.314639','spot',30,'4','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.254876','126.295011','restaurant',6,'5','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.305732','126.289684','spot',12,'6','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.34334','126.174012','spot',23,'7','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.501884','126.532663','hotel',5,'1','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.484152','126.806472','spot',31,'2','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.5324891','126.8502082','restaurant',13,'3','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.4707177','126.917191','restaurant',16,'4','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.449913','126.918557','restaurant',5,'5','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.438616','126.918065','restaurant',20,'6','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asd@naver.com',null,'33.424191','126.931154','spot',10,'7','2024-1-26');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.245726','126.565768','hotel',16,'1','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.2592174','126.4057641','restaurant',17,'2','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.254876','126.295011','restaurant',6,'3','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.23844','126.229384','restaurant',7,'4','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.329969','126.213613','restaurant',8,'5','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.3866186','126.2250355','restaurant',11,'6','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.449166','126.916523','hotel',17,'1','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.449913','126.918557','restaurant',5,'2','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.4707177','126.917191','restaurant',16,'3','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.525394','126.86018','spot',28,'4','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.5324891','126.8502082','restaurant',13,'5','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.531853','126.818534','restaurant',4,'6','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.437695','126.916358','hotel',18,'1','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.382195','126.842141','spot',34,'2','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.3892433','126.8011784','restaurant',18,'3','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.381479','126.787077','spot',33,'4','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.536500525644','126.77281988401','spot',7,'5','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.511505','126.5200319','restaurant',10,'6','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.447933','126.916229','hotel',19,'1','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.5158700504','126.5120821042','spot',5,'2','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.4915195','126.4972577','restaurant',12,'3','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.509252','126.472057','spot',14,'4','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.4788707','126.4640837','restaurant',14,'5','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.38978','126.366461','spot',26,'6','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.469066','126.935343','hotel',20,'1','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.4645313','126.308823','restaurant',15,'2','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asd@naver.com',null,'33.393919','126.240425','spot',11,'3','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.302674','126.316952','hotel',13,'1','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.289751','126.368116','spot',16,'2','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.2556752','126.4146427','restaurant',5,'3','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.252186','126.418423','spot',17,'4','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.248618','126.564149','spot',18,'5','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.261861','126.60486','restaurant',12,'6','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.312877','126.59671','restaurant',15,'7','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.394689','126.684529','spot',21,'8','2024-2-17');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.306580','126.318973','hotel',14,'1','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.3866186','126.2250355','restaurant',11,'2','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.461999','126.310584','spot',19,'3','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.4645313','126.308823','restaurant',15,'4','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.4985643','126.458788','restaurant',9,'5','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.4999552','126.5070561','restaurant',4,'6','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.511505','126.5200319','restaurant',10,'7','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asd@naver.com',null,'33.558104','126.759499','spot',20,'8','2024-2-18');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.517651','126.526846','hotel',3,'1','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.4999552','126.5070561','restaurant',3,'2','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.4645313','126.308823','restaurant',15,'3','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.393919','126.240425','spot',11,'4','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.3866186','126.2250355','restaurant',11,'5','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.34334','126.174012','spot',23,'6','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.3086406','126.1802146','restaurant',7,'7','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.231949','126.314639','spot',30,'8','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.323129','126.844781','hotel',6,'1','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.381479','126.787077','spot',33,'2','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.2894013','126.7514871','restaurant',22,'3','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.261861','126.60486','restaurant',12,'4','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.24427','126.415033','restaurant',13,'5','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.484152','126.806472','spot',31,'6','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.4707177','126.917191','restaurant',16,'7','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'3247975079',null,'33.424191','126.931154','spot',10,'8','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.501884','126.532663','hotel',5,'1','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.513308','126.52828','spot',9,'2','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.511505','126.5200319','restaurant',10,'3','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.51616','126.512057','spot',22,'4','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.4915195','126.4972577','restaurant',12,'5','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.4788707','126.4640837','restaurant',14,'6','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.4985643','126.458788','restaurant',9,'7','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.323129','126.844781','hotel',6,'1','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.3084898','126.7790718','restaurant',21,'2','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.2894013','126.7514871','restaurant',22,'3','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.308686','126.633805','spot',32,'4','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.252215','126.623346','spot',15,'5','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.2430993','126.5675955','restaurant',19,'6','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.248618','126.564149','spot',18,'7','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.345552','126.786996','hotel',7,'1','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.3892433','126.8011784','restaurant',18,'2','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.433593','126.733503','restaurant',3,'3','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.431593','126.690018','spot',27,'4','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.543712','126.668826','restaurant',17,'5','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.559502','126.72802','restaurant',20,'6','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.558104','126.759499','spot',20,'7','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.327163','126.833695','hotel',8,'1','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.438616','126.918065','restaurant',20,'2','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.449913','126.918557','restaurant',5,'3','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.4707177','126.917191','restaurant',16,'4','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.458053','126.941774','spot',8,'5','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.525394','126.86018','spot',28,'6','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.5324891','126.8502082','restaurant',13,'7','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.260598','126.592679','hotel',9,'1','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.517315','126.519721','hotel',2,'1','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.513308','126.52828','spot',9,'2','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.4999552','126.5070561','restaurant',4,'3','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.4915195','126.4972577','restaurant',12,'4','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.4922831','126.4726527','restaurant',2,'5','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.4784355','126.3669405','restaurant',8,'6','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.38978','126.366461','spot',26,'7','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.3866186','126.2250355','restaurant',11,'8','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.308686','126.633805','spot',32,'9','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.517651','126.526846','hotel',3,'1','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.431593','126.690018','spot',27,'2','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.433593','126.733503','restaurant',3,'3','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.484152','126.806472','spot',31,'4','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.5324891','126.8502082','restaurant',13,'5','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.525394','126.86018','spot',28,'6','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.458053','126.941774','spot',8,'7','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'abc@naver.com',null,'33.366747','126.839139','restaurant',2,'8','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.489814','126.487717','hotel',4,'1','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.4788707','126.4640837','restaurant',14,'2','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.51616','126.512057','spot',22,'3','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.5149090722','126.5137903112','spot',6,'4','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.511505','126.5200319','restaurant',10,'5','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.513308','126.52828','spot',9,'6','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.431593','126.690018','spot',27,'7','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.501884','126.532663','hotel',5,'1','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.38978','126.366461','spot',26,'2','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.4645313','126.308823','restaurant',15,'3','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.393919','126.240425','spot',11,'4','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.3866186','126.2250355','restaurant',11,'5','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.34334','126.174012','spot',23,'6','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.3086406','126.1802146','restaurant',7,'7','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.323129','126.844781','hotel',6,'1','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.366747','126.839139','restaurant',2,'2','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.382195','126.842141','spot',34,'3','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.381479','126.787077','spot',33,'4','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.3534854','126.7718273','restaurant',6,'5','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.3084898','126.7790718','restaurant',21,'6','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.2894013','126.7514871','restaurant',22,'7','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.345552','126.786996','hotel',7,'1','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.433593','126.733503','restaurant',3,'2','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.484152','126.806472','spot',31,'3','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.531853','126.818534','restaurant',4,'4','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.525394','126.86018','spot',28,'5','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.4707177','126.917191','restaurant',16,'6','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.449913','126.918557','restaurant',5,'7','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.345552','126.786996','hotel',7,'1','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.308686','126.633805','spot',32,'2','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.252215','126.623346','spot',15,'3','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.2533624','126.5062742','restaurant',23,'4','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.2556752','126.4146427','restaurant',5,'5','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.2592174','126.4057641','restaurant',17,'6','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.231949','126.314639','spot',30,'7','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.345552','126.786996','hotel',7,'1','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.438616','126.918065','restaurant',20,'2','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.458053','126.941774','spot',8,'3','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.558104','126.759499','spot',20,'4','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.254876','126.295011','restaurant',6,'5','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.2314288','126.2965731','restaurant',24,'6','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.2711473','126.2025341','restaurant',25,'7','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'abc@naver.com',null,'33.345552','126.786996','hotel',7,'1','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.489814','126.487717','hotel',4,'1','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.4915195','126.4972577','restaurant',12,'2','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.509252','126.472057','spot',14,'3','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.4788707','126.4640837','restaurant',14,'4','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.51616','126.512057','spot',22,'5','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.543712','126.668826','restaurant',17,'6','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.382195','126.842141','spot',34,'7','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.2894013','126.7514871','restaurant',22,'8','2024-1-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.501884','126.532663','hotel',5,'1','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.461999','126.310584','spot',19,'2','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.4645313','126.308823','restaurant',15,'3','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.407265','126.253018','restaurant',10,'4','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.2592174','126.4057641','restaurant',17,'5','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.252186','126.418423','spot',17,'6','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'abc@naver.com',null,'33.2430993','126.5675955','restaurant',19,'7','2024-1-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.2533624','126.5062742','restaurant',23,'2','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.252186','126.418423','spot',17,'3','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.2592174','126.4057641','restaurant',17,'4','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.231949','126.314639','spot',30,'5','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.329969','126.213613','restaurant',8,'6','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.34334','126.174012','spot',23,'7','2024-1-5');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.260598','126.592679','hotel',9,'1','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.365369','126.256657','spot',13,'2','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.3866186','126.2250355','restaurant',11,'3','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.461999','126.310584','spot',19,'4','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.463284','126.309798','restaurant',16,'5','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.4645313','126.308823','restaurant',15,'6','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.531853','126.818534','restaurant',4,'7','2024-1-6');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'3247975079',null,'33.260598','126.592679','hotel',9,'1','2024-1-7');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.501884','126.532663','hotel',5,'1','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.509252','126.472057','spot',14,'2','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.4784355','126.3669405','restaurant',8,'3','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.407265','126.253018','restaurant',10,'4','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.393919','126.240425','spot',11,'5','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.34334','126.174012','spot',23,'6','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.2711473','126.2025341','restaurant',25,'7','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.239173','126.319468','restaurant',11,'8','2024-2-23');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.323129','126.844781','hotel',6,'1','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.3084898','126.7790718','restaurant',21,'2','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.2894013','126.7514871','restaurant',22,'3','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.3534854','126.7718273','restaurant',6,'4','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.381479','126.787077','spot',33,'5','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.3892433','126.8011784','restaurant',18,'6','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.438616','126.918065','restaurant',20,'7','2024-2-24');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.424191','126.931154','spot',10,'8','2024-2-24');
Insert into myjourney(JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.293809','126.348992','hotel',10,'1','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.2592174','126.4057641','restaurant',17,'2','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.2556752','126.4146427','restaurant',5,'3','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.252186','126.418423','spot',17,'4','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.261861','126.60486','restaurant',12,'5','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.536500525644','126.77281988401','spot',7,'6','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'3247975079',null,'33.458053','126.941774','spot',8,'7','2024-2-25');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.518500','126.518524','hotel',1,'1','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.543712','126.668826','restaurant',17,'2','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.542061','126.671523','restaurant',18,'3','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.484152','126.806472','spot',31,'4','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.517315','126.519721','hotel',2,'1','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.231949','126.314639','spot',30,'3','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.463284','126.309798','restaurant',16,'2','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.2430993','126.5675955','restaurant',19,'4','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.525394','126.86018','spot',28,'2','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.3084898','126.7790718','restaurant',21,'4','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.517651','126.526846','hotel',3,'1','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'asdf@daum.net',null,'33.438616','126.918065','restaurant',20,'3','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.511505','126.5200319','restaurant',10,'2','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.247881','126.408438','hotel',11,'1','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.527646','126.882477','restaurant',1,'3','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.366747','126.839139','restaurant',2,'4','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.433593','126.733503','restaurant',3,'4','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.431593','126.690018','spot',27,'3','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.394689','126.684529','spot',21,'2','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.260598','126.592679','hotel',9,'1','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.3866186','126.2250355','restaurant',11,'3','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.231949','126.314639','spot',30,'2','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.293809','126.348992','hotel',10,'1','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'asdf@daum.net',null,'33.4915195','126.4972577','restaurant',12,'4','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.493483','126.534319','hotel',12,'18','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.389780','126.366461','spot',26,'17','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.239173','126.319468','cafe',11,'16','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.260598','126.592679','hotel',9,'14','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.2454605','126.5613681','restaurant',1,'15','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.527646','126.882477','cafe',1,'21','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.4922831','126.4726527','restaurant',2,'20','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.493483','126.534319','hotel',12,'19','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'asdf@daum.net',null,'33.458053','126.941774','spot',8,'22','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.293809','126.348992','hotel',10,'9','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.260598','126.592679','hotel',9,'6','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.4922831','126.4726527','restaurant',2,'7','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.433593','126.733503','cafe',3,'8','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.293809','126.348992','hotel',10,'10','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.239173','126.319468','cafe',11,'11','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.3892433','126.8011784','restaurant',18,'12','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'asdf@daum.net',null,'33.252186','126.418423','spot',17,'13','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (5,'asdf@daum.net',null,'33.245726','126.565768','hotel',16,'1','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (5,'asdf@daum.net',null,'33.254876','126.295011','restaurant',6,'2','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (5,'asdf@daum.net',null,'33.329969','126.213613','restaurant',8,'3','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (5,'asdf@daum.net',null,'33.469066','126.935343','hotel',20,'1','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (5,'asdf@daum.net',null,'33.366747','126.839139','restaurant',2,'2','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (5,'asdf@daum.net',null,'33.433593','126.733503','restaurant',3,'3','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.4999552','126.5070561','restaurant',3,'39','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.518500','126.518524','hotel',1,'37','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.542061','126.671523','cafe',18,'38','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.5149090722','126.5137903112','spot',6,'40','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.517315','126.519721','hotel',2,'41','2024-1-3');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.517315','126.519721','hotel',2,'42','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.245919','126.578516','cafe',14,'45','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.247881','126.408438','hotel',11,'51','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.305732','126.289684','spot',12,'50','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'jh7286@gmail.com',null,'33.2430993','126.5675955','restaurant',19,'47','2024-1-4');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.3534854','126.7718273','restaurant',6,'24','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.254876','126.295011','cafe',6,'25','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.5149090722','126.5137903112','spot',6,'26','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.260598','126.592679','hotel',9,'23','2024-1-1');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.2430993','126.5675955','restaurant',19,'29','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.437695','126.916358','hotel',18,'30','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.244270','126.415033','cafe',13,'28','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (2,'jh7286@gmail.com',null,'33.248618','126.564149','spot',18,'27','2024-1-2');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.248618','126.564149','spot',18,'4','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.4922831','126.4726527','restaurant',2,'3','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.461999','126.310584','spot',19,'2','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.293809','126.348992','hotel',10,'1','2023-12-30');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.527646','126.882477','restaurant',1,'4','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.366747','126.839139','restaurant',2,'3','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.2454605','126.5613681','restaurant',1,'2','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'jh7286@gmail.com',null,'33.247881','126.408438','hotel',11,'1','2023-12-31');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.484152','126.806472','spot',31,'3','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.381479','126.787077','spot',33,'4','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.525394','126.86018','spot',28,'2','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.449166','126.916523','hotel',17,'1','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.447933','126.916229','hotel',19,'1','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.51616','126.512057','spot',22,'3','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.4999552','126.5070561','restaurant',3,'4','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.543712','126.668826','restaurant',17,'2','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.3086406','126.1802146','restaurant',7,'4','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.4645313','126.308823','restaurant',15,'2','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.518500','126.518524','hotel',1,'1','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.34334','126.174012','spot',23,'3','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.239173','126.319468','restaurant',11,'4','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.2556752','126.4146427','restaurant',5,'3','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.260598','126.592679','hotel',9,'1','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.312877','126.59671','restaurant',15,'2','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.302674','126.316952','hotel',13,'1','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.3866186','126.2250355','restaurant',11,'2','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.463284','126.309798','restaurant',16,'4','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (1,'zxcv@nate.com',null,'33.407265','126.253018','restaurant',10,'3','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.2430993','126.5675955','restaurant',19,'5','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.245919','126.578516','restaurant',14,'4','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.252215','126.623346','spot',15,'3','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.489814','126.487717','hotel',4,'1','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.312877','126.59671','restaurant',15,'2','2024-1-10');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.252186','126.418423','spot',17,'3','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.289751','126.368116','spot',16,'5','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.24427','126.415033','restaurant',13,'4','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.2533624','126.5062742','restaurant',23,'2','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.501884','126.532663','hotel',5,'1','2024-1-11');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.2314288','126.2965731','restaurant',24,'4','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.305732','126.289684','spot',12,'5','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.2894013','126.7514871','restaurant',22,'3','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.3084898','126.7790718','restaurant',21,'2','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.323129','126.844781','hotel',6,'1','2024-1-12');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.2711473','126.2025341','restaurant',25,'3','2024-1-13');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.365369','126.256657','spot',13,'2','2024-1-13');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.345552','126.786996','hotel',7,'1','2024-1-13');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.327163','126.833695','hotel',8,'1','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.512632','126.528865','restaurant',19,'2','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.509252','126.472057','spot',14,'3','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.463284','126.309798','restaurant',16,'4','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.517315','126.519721','hotel',2,'1','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.393919','126.240425','spot',11,'5','2024-1-8');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.517651','126.526846','hotel',3,'1','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.543712','126.668826','restaurant',17,'2','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.559502','126.72802','restaurant',20,'4','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.5577318','126.7552547','restaurant',26,'5','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (3,'zxcv@nate.com',null,'33.542061','126.671523','restaurant',18,'3','2024-1-9');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.2894013','126.7514871','restaurant',22,'53','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.306580','126.318973','hotel',14,'52','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.261861','126.604860','cafe',12,'54','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.252215','126.623346','spot',15,'55','2024-1-14');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.252215','126.623346','spot',15,'56','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.2533624','126.5062742','restaurant',23,'58','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.394689','126.684529','spot',21,'59','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.302674','126.316952','hotel',13,'60','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.323129','126.844781','hotel',6,'57','2024-1-15');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.3866186','126.2250355','restaurant',11,'62','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.5158700504','126.5120821042','spot',5,'64','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.312877','126.596710','cafe',15,'63','2024-1-16');
Insert into myjourney (JNUM,ID,NUM,XPOS,YPOS,CATE,REF,TURN,JDATE) values (4,'zxcv@nate.com',null,'33.469066','126.935343','hotel',20,'61','2024-1-16');


commit;

