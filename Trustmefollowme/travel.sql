-- �Խ���
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


-- �Խ��� ���ƿ�
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


-- �Խ��� ���
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


--ī�� ��ȣ ������
drop sequence cafeseq;
create sequence cafeseq
  increment by 1
  start with 1
  nocache;

--ī�� ����
drop TABLE cafe;
CREATE TABLE cafe (
    cnum int primary key,               -- ī�� ��ȣ 
    name varchar2(255) NOT NULL,      -- ī�� �̸� 
    xpos varchar2(255),               -- ī�� ���� 
    ypos varchar2(255),               -- ī�� �浵
    address varchar2(255),             -- ī�� �ּ� 
    ctel1 varchar2(15),                  -- ī�� ��ȭ ���� ��ȣ 
    ctel2 varchar2(15),                  -- ī�� ��ȭ �߰� ��ȣ 
    ctel3 varchar2(15),                  -- ī�� ��ȭ �� ��ȣ   
    c_date varchar2(30),               -- ī�� ���� ����
    ctime1 varchar2(20),               -- ī�� ���� ���� �ð�
    ctime2 varchar2(20),               -- ī�� ���� ���� �ð�
    image varchar2(30),             -- ī�� ����(���� ����)
    image2 varchar2(30),            -- ī�� ����2
    image3 varchar2(30),            -- ī�� ����3
    image4 varchar2(30),            -- ī�� ����4
    image5 varchar2(30)             -- ī�� ����5
);


-- ������
drop sequence resseq;
create sequence resseq 
start with 1
increment by 1
nocache;

drop table rest;
create table rest (
	rnum number primary key,	-- ������ ������ȣ
	name varchar2(30) not null,	-- ������ �̸�
	xpos varchar2(255) not null,	-- ����
	ypos varchar2(255) not null,	-- �浵
	address varchar2(255) not null, -- ���(��⵵ 00��)
	image varchar2(50),		-- ��ǰ �̹���
	image2 varchar2(50),		-- ��ǰ �̹���
	image3 varchar2(50),		-- ��ǰ �̹���
	image4 varchar2(50),		-- ��ǰ �̹���
	image5 varchar2(50),		-- ��ǰ �̹���
	rtel1 varchar2(255) not null,	-- ����ó ����
	rtel2 varchar2(255) not null,	-- ����ó �߰�
	rtel3 varchar2(255) not null,	-- ����ó ��
	rtime1 varchar2(255) not null,	-- ���� ���� �ð�
	rtime2 varchar2(255) not null,	-- ���� ���� �ð�
	rdate varchar2(255) not null,	-- ������ ��������
  rcontent varchar2(2000) not null -- ������ �Ұ�
);

drop table hotel;
create table hotel(
   hnum number   not null,--ȣ�� ������ȣ
   name varchar2(500) not null, --ȣ���̸�
   hprice varchar2(500) not null,--ȣ�ڰ���
   image varchar2(500)   not null,--ȣ���̹���1
   image2 varchar2(500) not null,--���̹���2
   image3 varchar2(500) not null,--���̹���3
   image4 varchar2(500) not null,--���̹���4
   image5 varchar2(500) not null,--���̹���5
   image6 varchar2(500) not null,--�δ�ü��̹���6
   address varchar2(500) not null,--ȣ���ּ�
   htel varchar2(50) not null,--��ȭ��ȣ
   facility varchar2(500) not null,--�δ�ü�
   hcontent varchar2(500) not null,--ȣ�� �󼼳���
   rname1 varchar2(500)   not null,--���̸�1
   rname2 varchar2(500)   not null,--���̸�2
   rname3 varchar2(500)   not null,--���̸�3
   rname4 varchar2(500)   not null,--���̸�4
   rprice1   varchar2(500) not null,--��1����
   rprice2   varchar2(500) not null,--��2����
   rprice3   varchar2(500) not null,--��3����
   rprice4   varchar2(500) not null,--��4����
   xpos varchar2(500) not null,--ȣ������
   ypos varchar2(100) not null--ȣ�ڰ浵
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
myjNum number default 0 --�ش� ���̵��� ���� ������ȣ
);

insert into member(num,email,password,name ,birth ,address1, address2, mtel)
values(member_seq.nextval,'admin@gmail.com','admin1234','����','1996-12-24','���� ������ ������ 20�� 13','�ÿ����Ͽ콺 1202ȣ','010-1234-5678');

insert into member(num,email,password,name ,birth ,address1, address2, mtel)
values(member_seq.nextval,'3247975079','1234','ä��','1999-02-28','��� ���ý� ������ ����ȫ���� 64','Ǫ������ 1�� 101ȣ','010-1234-5678');


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

Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (5,'��ξ��ؾȵ���','33.5158700504','126.5120821042','����Ư����ġ�� ���ֽ� ���ؾȷ� 687-8','�ٴٸ� ���ߴ� ������ ��ġ�Ǿ� �־� �㳷���� ��å�� ���⿡�� ���� ȯ���� ���߰� �ֽ��ϴ�.','road1.jpeg','road2.jpeg','road3.jpeg','road2.jpeg','road1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (6,'�뿬�����ٸ�','33.5149090722','126.5137903112','����Ư����ġ�� ���ֽ� ���� 69',null,'spot1.jpeg','spot2.jpeg','spot3.jpeg','spot2.jpeg','spot1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (7,'���屼','33.536500525644','126.77281988401',' ����Ư����ġ�� ���ֽ� ������ ���屼�� 182',null,'cave1.jpeg','cave2.jpeg','cave3.jpeg',null,null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (26,'9.81 ��ũ','33.389780','126.366461','����Ư����ġ�� ���ֽ� �ֿ��� õ���� 880-24','���� ���� ����Ʈ ���̽� �׸���ũ ��9.81��ũ���� �̷��� �� ���� �������� �ǳ� ������ �پ��� ��Ƽ��Ƽ �׸��� �ų��� ���̰̽� �Բ� ���� �ڿ��� ������ ������ �� �ִ� ������ �ֿ� �ٴٿ� �Ѷ�� ���̿� ��ġ�ϰ� �ִ�. ','9.81p0.jpeg','9.81p1.jpeg','9.81p2.jpeg','9.81p3.jpeg','9.81p4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (27,'����θ�','33.431593','126.690018','���ѹα� ����Ư����ġ�� ���ֽ� ��õ�� ���ڸ��� 768','�Ŵ��� ��ȭ������ �̾����� �� ��å�θ� ���� �Ƹ���� ������� ǳ���� �������ϴ�.','sangum1.jpeg','sangum2.jpeg','sangum4.jpeg','sangum5.jpeg','sangum3.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (28,'��ȭ�غ�','33.525394','126.860180','����Ư����ġ�� ���ֽ� ������ ��ȭ��','���ֿ÷� 20�ڽ��� �ȴ� ���� ��ȭ�μӿ������ �س�ڹ��� ���̿� ���� �غ� �ϳ��� ���� �� �ִ�. ������ ��ȭ���� ��ġ�� �� �غ��� ���� �ؼ����嵵 �ƴϰ� �Ը� ũ�� ������, ���� �ø��� ���� �Ķ� �ٴٸ� �������ش�.','sewha0.jpeg','sewha1.jpeg','sewha2.jpeg','sewha3.jpeg','sewha4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (30,'��Ӹ��ؾ�','33.231949','126.314639','����Ư����ġ�� �������� �ȴ��� ���� 218-10','���� ���ڶ��� �ִ� �ٴ尡�� ���� �ްԼҿ��� 10���� �ɾ������ ������ �ؾ������� ��Ӹ� �ؾȰ� ����ġ�� �ȴ�.','yungmu1.jpeg','yungmu2.jpeg','yungmu3.jpeg','yungmu4.jpeg','yungmu5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (31,'���ڸ�','33.484152','126.806472','���ѹα� ����Ư����ġ�� ���ֽ� ������ ���ڽ��� 55','500~800��� ���ڳ��� ��õ �׷簡 �ڻ��ϴ� õ����买�Դϴ�.','bija1.jpeg','bija0.jpeg','bija2.jpeg','bija3.jpeg','bija4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (32,'�޾ָ� �ڿ���Ȱ����','33.308686','126.633805','����Ư����ġ�� �������� ������ �ŷʵ��� 256','������ �ɵ�� �Ѷ�� ǳ���� ������ ���� �Ƹ��ٿ��� �ڶ��ϴ� �� �����̴�. ���߹����̸�, �ų� ������ �� ����(��ä, ��ȭ, ����, ��ũ�ĸ�, ����)�� �����ϰ� �ִ�','huae2.bmp','huae1.jpeg','huae3.bmp','huae4.bmp','huae5.bmp');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (33,'��������','33.381479','126.787077','���ֿ��� ������ õ�� ��� ���� �������̴�. ���� ���ʿ��� ���� �Ա��� �ٶ󺸸� ��� ������ �̹��ϰ� �ź�ο� ������ �ش�.','����Ư����ġ�� �������� �߻갣���� 4772','nok1.jpeg','nok2.jpeg','nok3.jpeg','nok4.jpeg','nok5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (34,'���ⷣ��','33.382195','126.842141','����Ư����ġ�� �������� ������ �߻갣���� 4150-30','�ݷ����� ���� ������ ���� �Ĺ��� �׸���ũ','illchu0.png','illchu1.png','illchu3.png','illchu2.png','illchu4.png');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (22,'��ξ�','33.516160','126.512057','����Ư����ġ�� ���ֽ� ���2�� ��ξϱ� 15','�ؾȿ� ��ġ�� �� �Ӹ� ����� ȭ��� �������� �ִ� �α� ����Դϴ�.','yungdo1.jpeg','yungdo2.jpeg','yungdo3.jpeg','yungdo4.jpeg','yungdo5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (23,'��âǳ���ؾ�','33.343340','126.174012','����Ư����ġ�� ���ֽ� �Ѱ�� ��â�� 1323','���ұ��� �ؾȼ��� ���� ���̴� �Ͼ� ǳ���� ���޶���� �ٴٴ� �츮���� ������ ���� ǳ���� �����ش�. ','sincha0.jpeg','sincha1.jpeg','sincha2.jpeg','sincha4.jpeg','sincha3.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (24,'���ҿ�','33.413417','126.752801','����Ư����ġ�� �������� ������ 2350-104','������ ǥ���鿡 ��ġ�� ��������, �ٶ��� �δ� ���̶�� ���� ���� ����̴�. ���̶�� ��Ī�� �ִ� ��ŭ û����, �޹� �� ���۹��� ���� �� ������, ƫ��, ��ä��, ����, �󺥴� �� �Ƹ��ٿ� �ɵ鵵 ������ �� �ִ�.','borim3.jpeg','borim0.jpeg','borim1.jpeg','borim2.jpeg','borim4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (5,'��ξ��ؾȵ���','33.5158700504','126.5120821042','����Ư����ġ�� ���ֽ� ���ؾȷ� 687-8','�ٴٸ� ���ߴ� ������ ��ġ�Ǿ� �־� �㳷���� ��å�� ���⿡�� ���� ȯ���� ���߰� �ֽ��ϴ�.','road1.jpeg','road2.jpeg','road3.jpeg','road2.jpeg','road1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (6,'�뿬�����ٸ�','33.5149090722','126.5137903112','����Ư����ġ�� ���ֽ� ���� 69',null,'spot1.jpeg','spot2.jpeg','spot3.jpeg','spot2.jpeg','spot1.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (7,'���屼','33.536500525644','126.77281988401',' ����Ư����ġ�� ���ֽ� ������ ���屼�� 182',null,'cave1.jpeg','cave2.jpeg','cave3.jpeg',null,null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (10,'��������','33.424191','126.931154','����Ư����ġ�� �������� ������ ����������','���, �������, ����, ��ġ ���� ����, ��å�θ� ���߰� �ִ� ������ �غ� �����Դϴ�.','subji1.jpeg','subji2.jpeg','subji3.jpeg','subji4.jpeg','subji5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (8,'���� �����','33.458053','126.941774','���ѹα� �������� ���� �����','ȭ�� ��ȭ�� ������ �� ��Ư�� ��ȭ�� ������ ���츮�� ����� ���� ����ϴٰ� �մϴ�.','sungsan4.jpeg','sungsan1.jpeg','sungsan5.jpeg','sungsan3.jpeg',null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (9,'���ֵ�������','33.513308','126.528280','����Ư����ġ�� ���ֽ� Ư����ġ��, ��������','�̽��� ����깰, �Ƿ�, ��ȭ ���� �Ǹ��ϴ� ���簡 ������ �ǳ� �����Դϴ�.','dongmon1.png','dongmon2.jpeg','dongmon3.jpeg','dongmon4.jpeg','dongmon5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (11,'�����غ�','33.393919','126.240425','���ѹα� ����Ư����ġ�� ���ֽ� �Ѹ��� �Ѹ��� 329-10','������ �������� ��������� ���� û�ϻ� �ٴ幰�� ��絵 ������ �����մϴ�.','hunje1.jpeg','hubje2.jpeg','hunje3.jpeg','hubje4.jpeg','hubje5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (12,'���ֿ����� Ƽ������','33.305732','126.289684','����Ư����ġ�� �������� �ȴ��� ��ȭ����� 15','���� ���ð�, ���� ���� �� �� �ִ� ������, �α� �ִ� ���ǰ ����, ī�䰡 �ֽ��ϴ�.','ohsul1.jpeg','ohsul2.jpeg','ohsul3.jpeg','ohsul4.jpeg','ohsul5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (13,'��������','33.365369','126.256657','���ѹα� ���ֽ� ��������','ǳ���� �Ƹ��ٿ�� �ų� ������ ���� �ǿ�� ��� ������ ������ ȭ�꼺 ����Դϴ�.','sebuk1.jpeg','sebuk2.jpeg','sebuk3.jpeg','sebuk4.jpeg','sebuk5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (14,'���� ������ �ؾȵ���','33.509252','126.472057','����Ư����ġ�� ���ֽ� �����ϵ�','�Ķ� ���� �ϴð� �� �Ʒ��� ������ ������ ������ ������ �� �ִ� �����ȣ�ؾȵ���. ���ְ��װ� ����� ���� �־� ���� ���ķ� ������ ����̺긦 ��� �� �ִ� ���̴�','dudo1.jpeg','dudo2.jpeg','dudo3.jpeg','dudo5.jpeg','dudo4.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (15,'��ұ�','33.252215','126.623346','����Ư����ġ�� �������� ��ұ�� 138','ȭ�꼮 ������ �ѷ����� �Ƹ��ٿ� �ϱ��� ī��� ���� �¸� Ÿ�Ⱑ �����մϴ�.','seso1.jpeg','seso2.jpeg','seso3.jpeg','seso4.jpeg','seso5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (16,'ī�Ḯ�� ��','33.289751','126.368116','���ѹα� ����Ư����ġ�� �������� �ȴ��� ���Ƿ� 166','1979�⿡ ������ 200,000m�� �Ը��� ��������� ������ ����� �پ��� �Ĺ� ���� �� �� ������ ���߹����Դϴ�.','camel1.jpeg','camel2.jpeg','camel3.jpeg','camel4.jpeg','camel5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (17,'õ��������','33.252186','126.418423','���ѹα� ����Ư����ġ�� �������� �߹��� 2232','�������� ������� ���� 3�ܰ��� ������ �̷�� ������ �ѷ��ο� �ֽ��ϴ�.','chunje1.jpeg','chunje2.jpeg','chunje3.jpeg','chunje4.jpeg','chunje5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (18,'������ ���Ͽ÷�����','33.248618','126.564149','����Ư����ġ�� �������� Ư����ġ�� �߾ӷ�62���� 18','1960��뿡 ������ �ǳ� �������� ����깰, ������ǰ ���� �Ǹ��ϴ� ���Ǵ밡 ���� �ֽ��ϴ�.','allle1.jpeg','allle3.jpeg','allle2.jpeg','allle4.jpeg',null);
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (19,'�Ѵ��غ�','33.461999','126.310584','	����Ư����ġ�� ���ֽ� �ֿ��� �ֿ���1�� 26-4','�� �ϼ��ο� ��ġ�Ͽ� �ֿ����� �������� �ؾ��� ���� �̾�����. ���ֽð� 2009�� ���� ��� 31�� ����������, ���� ������ �ٴٷ� �����ϴ�','handam1.jpeg','handam2.jpeg','handam4.jpeg','handam3.jpeg','handam5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (20,'����ؼ�����','33.558104','126.759499','����Ư����ġ�� ���ֽ� ������ �����ؾȷ� 237','�Ŵ��� �ʷ����� ��� ���� �𷡰� �׿� �����������, ������� �ܼ��� ħ���� ���� ���� ���� ���̶�� ���� ��� �ִ�.','kimne1.jpeg','kimne2.jpeg','kimne3.jpeg','kimne4.jpeg','kimne5.jpeg');
Insert into SPOT (SNUM,NAME,XPOS,YPOS,ADDRESS,CONTENT,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) values (21,'����Ͻ��� - ���ڸ��� ���ⱸ','33.394689','126.684529','����Ư����ġ�� �������� Ư����ġ��, ǥ���� ���ø� �� 158-4','�ﳪ�� �������� ������� ���� �� ������ ������ ��å�� ���� �߻������� ���� ������ ���� �� �ֽ��ϴ�','sare1.jpeg','sare2.jpeg','sare3.jpeg','sare4.jpeg','sare5.jpeg');

-- ������

insert into rest values(resseq.nextval,'����Ĵ�','33.2454605','126.5613681','���� �������� ����� 377','suhee.jpg','suhee2.jpg','suhee3.jpg','suhee4.jpg','suhee5.jpg','064','762','0777','08:00','21:00','2003-03-01','������ ����� �н������� �ҹ��� �������� ����Ĵ��� ������ ���� �Ĵ�� ���������� �پ��� �޴��� ���������� �����մϴ�. �޴��ǿ��� ������ ������ ���� �����Ǵ� ����� ���� ���Թ�ȸ�� ����Ĵ��� �α�޴��� �ϳ��Դϴ�.');
insert into rest values(resseq.nextval,'�����Ĵ�','33.4922831','126.4726527','���� ���ֽ� ������ 88','solji.jpg','solji2.jpg','solji3.jpg','solji4.jpg','solji5.jpg','0507','1315','0349','12:00','21:40','2005-06-27','���ױ�ó �������� ������ ������ ����! �������� ���ִ� �����Դϴ�.');
insert into rest values(resseq.nextval,'������','33.4999552','126.5070561','���� ���ֽ� ������ 98','kind.jpg','kind2.jpg','kind3.jpg','kind4.jpg','kind5.jpg','064','713','7136','11:00','21:00','2018-05-22','���ֻ��밥ġ, �հ���, ����, ����, �̸��� �ѹ��� ������ �ִ� �հ�������! 50���� ���Ͽ�� ���� �ż��� ������ �߰� ���� �ܰ踦 ���� ���� ���� �������� �����ϰڽ��ϴ�.');
insert into rest values(resseq.nextval,'���ֿ�����','33.4999552','126.5070561','����Ư����ġ�� ���ֽ� ������ �ظ����ؾȷ� 972','onui.jpg','onui2.jpg','onui3.jpg','onui4.jpg','onui5.jpg','02','336','8546','09:00','18:30','2012-05-25','���ֿ����̴� ����, ���� �������Դϴ�. ���ֻ� ���� �����ϰ� �丮�ϸ�, ����, ���� �� ������ ���� ������ ����մϴ�. ���� ���ֿ����̿��� ������ �ٴٸ� �����ϸ�, �������� ���� ���ĵ� ���ְ� ��ñ� �ٶ��ϴ�.');
insert into rest values(resseq.nextval,'���ֿ���','33.2556752','126.4146427','����Ư����ġ�� ���޵� �߹������� 27','oseong.jpg','oseong2.jpg','oseong3.jpg','oseong4.jpg','oseong5.jpg','02','336','8546','09:00','18:30','1985-01-01','���ֿ����� ã���ֽô� ���Բ� ���� ���� �Ƴ����� �丮�ϰڴٰ� ��ӵ帳�ϴ�. ���� ������ ������ ��ġ����, ������ ��ġ����, ������ ���� ���ָ����� �������� �����帮�ڽ��ϴ�.');

insert into rest values(resseq.nextval,'���� �Ĵ�','33.3534854','126.7718273','���� �������� Ư����ġ�� ǥ���� ���ø� 1879-4','namokdo.jpg','namokdo2.jpg','namokdo3.jpg','namokdo4.jpg','namokdo5.jpg','064','787','1202','09:00','20:00','1987-01-01','���ø� ���� ��ó �η�ġ�� ���ִ� �� ���ִ� �η�ġ�� ��÷� ������~');
insert into rest values(resseq.nextval,'������ ��������','33.3086406','126.1802146','����Ư����ġ�� ���ֽ� �Ѱ�� ����8�� 21-15','star.jpg','star2.jpg','star3.jpg','star4.jpg','star5.jpg','0507','1371','5895','12:00','22:00','2017-05-20','�ż��� ������� ��ź�ҿ� �����ϰ� ���� ������ ���� ������ �Ͽ�, ���ֵ����� ���ֽ����� ���������� ��ҿ��� �Ծȿ� ���� �����ϴ� ���� ������ �� �����̴ϴ�! Ư���� ���� ���� Ư���ϰ�, �ϻ����� ���� Ư���ϰ� ������ִ� ����Դϴ�!');
insert into rest values(resseq.nextval,'�س�����','33.4784355','126.3669405','����Ư����ġ�� ���ֽ� �ֿ��� �ֿ��ؾȷ� 591','haenyeo.jpg','haenyeo2.jpg','haenyeo3.jpg','haenyeo4.jpg','haenyeo5.jpg','064','713','9366','10:00','20:00','2013-11-11','����, �Ҷ�, �� �۰� ���� ������ ���� �� �ִ� ��. ���� �޴��δ� �����ȸ, �Ҷ���, �������� �ֽ��ϴ�.. ǳ���� ���� ���� �ؾ� ���԰��� �־� �ٴٸ� ���鼭, �ż��� �ػ깰�� ���� �� �ֽ��ϴ�.');
insert into rest values(resseq.nextval,'�ڸű���','33.4985643','126.4587880','���� ���ֽ� �װ񳲱� 46','sisters.jpg','sisters2.jpg','sisters3.jpg','sisters4.jpg','sisters5.jpg','064','746','2222','09:00','18:00','2002-02-28','��ⱹ���� ��������� ������ ��ǰ�Դϴ�. �α⸹�� ��ⱹ���� ��������� �ż��� ���� �����ϰڽ��ϴ�.');
insert into rest values(resseq.nextval,'�������屹','33.5115050','126.5200319','���� ���ֽ� ����� 11','woojin.jpg','woojin2.jpg','woojin3.jpg','woojin4.jpg','woojin5.jpg','064','757','3393','06:00','22:00','1995-04-12','���ֻ� ��縮�� ���� �ְ� ǫ ���� ���� ������ ���� ���ֽ� ���屹�� ���� �� �ִ� �ѽĴ��Դϴ�.');

insert into rest values(resseq.nextval,'�ȳ����羾','33.3866186','126.2250355','����Ư����ġ�� ���ֽ� Ư����ġ��, �Ѹ��� �ݴ�9�� 12','hello.jpg','hello2.jpg','hello3.jpg','hello4.jpg','hello5.jpg','064','796','0624','09:00','16:00','2017-06-24','�� ������ �����, ������ ���� ������� ��ǥ �޴��Դϴ�. ������ �Բ� ��ø� ������ �ʹ� ���ƿ�.');
insert into rest values(resseq.nextval,'�÷�����','33.4915195','126.4972577','����Ư����ġ�� ���ֽ� Ư����ġ��, ���� �;ƶ��� 24','ollae.jpg','ollae2.jpg','ollae3.jpg','ollae4.jpg','ollae5.jpg','064','742','7355','08:30','15:00','2011-05-05','�������� ����� ������ ���� ��ٱ�ġ�� �������� �Բ� �Դ� ���� �Դϴ�. �ż��� ��Ḧ ����Ͽ� �׻� ������ ��� �����ϰڽ��ϴ�.');
insert into rest values(resseq.nextval,'��������','33.5324891','126.8502082','����Ư����ġ�� ���ֽ� ������ �ظ����ؾȷ� 1282','myoungjin.jpg','myoungjin2.jpg','myoungjin3.jpg','myoungjin4.jpg','myoungjin5.jpg','064','782','9944','09:30','21:00','2012-07-01','���ܹ����� ������ ��, ������, ���� ���ܹ�, ��������, ����ȸ �� ������ �پ��� ���� ���� �� �ִ� �����Դϴ�.');
insert into rest values(resseq.nextval,'���絷 ���ֺ���','33.4788707','126.4640837','����Ư����ġ�� ���ֽ� ������ 3086-3','donsadon.jpg','donsadon2.jpg','donsadon3.jpg','donsadon4.jpg','donsadon5.jpg','064','746','8989','12:30','22:00','2018-07-15','���絷�� �ٰ��� �Ϲ� ���������� ���� �� ���� ���� ���� ������ ��ȭ�� �̷�������� ������ �ؿܿ����� ���� ã�� ���ô� �е鲲 ���ִ� �ٰ�⸦ ����� ������ �帮�� ���� ����ϰ� �ֽ��ϴ�.');
insert into rest values(resseq.nextval,'�ϰ��񱹼�','33.4645313','126.3088230','���� ���ֽ� �ֿ��� �ֿ��ϼ��� 54','hagalbi.jpg','hagalbi2.jpg','hagalbi3.jpg','hagalbi4.jpg','hagalbi5.jpg','0507','1390','2724','09:00','18:00','2020-12-01','���� ���� �ֿ����� ��¥��ⱹ�� ���� �ϰ��񱹼� �Դϴ�. ���� ���� ��� ���� ���� �������� �տ� ������ �� ���Ǻ信�� �ְ��� �Ļ縦 ��ӵ帳�ϴ�.');

insert into rest values(resseq.nextval,'�Ѷ�����','33.4707177','126.9171910','����Ư����ġ�� �������� Ư����ġ��, ������ ���ѷ� 33','hanra.jpg','hanra2.jpg','hanra3.jpg','hanra4.jpg','hanra5.jpg','064','782','5190','10:00','20:00','1997-08-17','�α⸹�� ���� ���ܹ�� �������� ������ ���� ��ðڽ��ϴ�.');
insert into rest values(resseq.nextval,'����','33.2592174','126.4057641','���� �������� ���޷� 10','yeondon.jpg','yeondon2.jpg','yeondon3.jpg','yeondon4.jpg','yeondon5.jpg','0507','1386','7060','12:00','21:00','2015-09-25','�׻� �ູ�� �Ļ縦 �� �� �ֵ��� ������ �ʴ� ��ǰ ����� �����ϰڽ��ϴ�.');
insert into rest values(resseq.nextval,'����ĥ�ʸ��Ĵ�','33.3892433','126.8011784','���� �������� ǥ���� ������������ 74','seong.jpg','seong2.jpg','seong3.jpg','seong4.jpg','seong5.jpg','064','787','0911','11:00','20:00','1980-01-22','�����μӸ������� ������ �������⸦ ���� �� �ִ� ��. ��⸦ �ֹ��ϸ� ���ֳ����ʹ����̽ǿ��� �븩�ϰ� �ʹ��Ǿ� ���� ���� ���� ����. ������� ���� ��� �ð��� �ҹ��� ���� ���� �� �ֽ��ϴ�.');
insert into rest values(resseq.nextval,'�ٴٸ�������','33.2430993','126.5675955','���� �������� ĥ�ʸ��� 123','seapig.jpg','seapig2.jpg','seapig3.jpg','seapig4.jpg','seapig5.jpg','0507','1413','1058','12:00','21:00','2015-11-24','���� ���� ������� �ٴٸ� ���� ��� �� �ִ� Ư���� �����Դϴ�. ����Ư���޴��� ����������� ���ܹ�, �ع������ҹ�⵵ ��Ʈ�� Ư���� ���ݿ� �����Ͽ��� ��ȸ���� ������ �ǽø��� �Ͻ��ϴ�.');
insert into rest values(resseq.nextval,'���þƹ汹��','33.4386160','126.9180650','���� �������� ������ ���������� 10','gasiabang.jpg','gasiabang2.jpg','gasiabang3.jpg','gasiabang4.jpg','gasiabang5.jpg','064','783','0987','10:00','20:30','2017-12-10','��ⱹ��, �������, ��ġ���� �� �پ��� ������ �����ϸ� ������ ���� �Ǵ� ���ΰ� �ູ�� �Ļ簡 �� �� �ֵ��� ����ϰڽ��ϴ�.');
insert into rest values(resseq.nextval,'���� ��Ÿ��ƽ����','33.3084898','126.7790718','���� �������� ǥ���� ����߾ӷ�15���� 6','fantastic.jpg','fantastic2.jpg','fantastic3.jpg','fantastic4.jpg','fantastic5.jpg','0507','1339','6990','10:00','19:00','2020-11-21','�Ļ� �Ͻô� ���� ����ϰ� ���� �����Ⱑ ���� ���Ѵٰ� �����ؿ�. ��ô� �ð��� ���� ����ϰ� ���� ���Ǽ��ֵ��� �ּ��� ���ҰԿ�!');
insert into rest values(resseq.nextval,'�̽���ũ��','33.2894013','126.7514871','���� �������� ������ �����ؾȷ� 533','mrcrab.jpg','mrcrab2.jpg','mrcrab3.jpg','mrcrab4.jpg','mrcrab5.jpg','0507','1471','5025','11:30','21:00','2015-06-11','����ִ� �����Ϳ� ŷũ���� ���ֵ��� �����ϰ� ���峻 �ǳ����������� ���� ������ Ȯ�ΰ����մϴ�. �ż��Ե� ���� Ȯ�� �����Ͻñ� ������ �Ƚ��ϰ�~ ���ְ�~ ��̰� �Ļ� �����մϴ�^^');
insert into rest values(resseq.nextval,'ȭ�� �����','33.2533624','126.5062742','���� �������� �ż���32���� 20','firego.jpg','firego2.jpg','firego3.jpg','firego4.jpg','firego5.jpg','0507','1358','6124','11:00','24:00','2020-07-15','����� ���������ν� ����� �ε巴���ʰ� �����ϴٶ�� ����� ���� ���� ��¤�� �ѹ� �ʹ��Ͽ� �⳻�� ���� ���� ������ �ε巯�� ���� �αⰡ �����ϴ�.');
insert into rest values(resseq.nextval,'����� ���ֻ�����','33.2314288','126.2965731','���� �������� �ȴ��� ���� 378','chunmi.jpg','chunmi2.jpg','chunmi3.jpg','chunmi4.jpg','chunmi5.jpg','0507','5611','5611','11:30','21:00','2003-03-13','���ִ� ��ġ������ ����� �η�ġ��, ��ǥ�޴��δ� ����� �������� ���, ��������, ������ �� �پ��� ������ ��ܺ�����~');
insert into rest values(resseq.nextval,'���ְ��','33.2711473','126.2025341','���� �������� ������ �����߷� 94','goro.jpg','goro2.jpg','goro3.jpg','goro4.jpg','goro5.jpg','0507','1312','9080','11:00','15:30','2017-12-10','���� ǻ���Ϻ� �������Դϴ�. ���� ������ ����� �쵿�� ������ ������~');
insert into rest values(resseq.nextval,'��������','33.5577318','126.7552547','���� ���ֽ� ������ ����21�� 21','kimnyeong.jpg','kimnyeong2.jpg','kimnyeong3.jpg','kimnyeong4.jpg','kimnyeong5.jpg','064','747','8174','11:30','21:00','2006-05-22','���� �������̴� �ְ��� ��Ḧ �����մϴ�. ���� ���ֽô� �е鿡�� �����ϰ� �����ϸ�, �׻� �ż��� ȸ�� �����ϰڽ��ϴ�.');


commit;


-- ī�� insert

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'�ϵ�1940','33.527646','126.882477','����Ư����ġ�� ���ֽ� ������ �ظ����ؾȷ� 1681-3','064','782','1940','skip','09:00','17:00','hd1.jpeg','hd2.jpeg','hd3.jpeg','hd4.jpeg','hd5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���ٷ���','33.366747','126.839139','���� �������� ������ ��ǳ�ϵ���19���� 59','0507','1411','4052','skip','11:00','19:00','al1.jpeg','al2.jpeg','al3.jpeg','al4.jpeg','al5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'ī�� �۷���','33.433593','126.733503','���� ���ֽ� ������ ���ڸ��� 1202','010','9587','3555','skip','09:30','17:30','gc1.jpeg','gc2.jpeg','gc3.jpeg','gc4.jpeg','gc5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'�װ���','33.531853','126.818534','����Ư����ġ�� ���ֽ� ������ �ѵ��� 119','010','3140','3121','skip','11:00','17:30','ts1.jpeg','ts2.jpeg','ts3.jpeg','ts4.jpeg','ts5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���� ���ֺ���','33.449913','126.918557','����Ư����ġ�� �������� ������ �����Ϸ� 20 �÷��̽� �� LOVE�� 1��','064','766','3008','skip','08:30','20:00','dr1.jpeg','dr2.jpeg','dr3.jpeg','dr4.jpeg','dr5.jpeg');

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���븣���','33.254876','126.295011','����Ư����ġ�� �������� �ȴ��� ���ּ���2100���� 46 1��','064','794','0999','skip','09:00','18:30','mb1.jpeg','mb2.jpeg','mb3.jpeg','mb4.jpeg','mb5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'�ν���','33.238440','126.229384','����Ư����ġ�� �������� ������ �ϰ������27���� 22 1��','010','6844','5661','skip','11:30','18:00','im1.jpeg','im2.jpeg','im3.jpeg','im4.jpeg','im5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'����','33.329969','126.213613','����Ư����ġ�� ���ֽ� �Ѱ�� ������ 32','070','8801','0228','skip','10:00','19:00','snl1.jpeg','snl2.jpeg','snl3.jpeg','snl4.jpeg','snl5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'Ŭ�����','33.345020','126.177518','����Ư����ġ�� ���ֽ� �Ѱ�� �Ѱ��ؾȷ� 552-22','070','8801','0228','skip','10:00','19:00','cb1.jpeg','cb2.jpeg','cb3.jpeg','cb4.jpeg','cb5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���̺�','33.407265','126.253018','����Ư����ġ�� ���ֽ� �Ѹ��� ����7�� 25-3','010','5198','8767','skip','09:00','19:00','wv1.jpeg','wv2.jpeg','wv3.jpeg','wv4.jpeg','wv5.jpeg');

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���ؿ¸�','33.239173','126.319468','����Ư����ġ�� �������� �ȴ��� ���� 141','064','794','0117','skip','09:00','20:00','oa1.jpeg','oa2.jpeg','oa3.jpeg','oa4.jpeg','oa5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'����','33.261861','126.604860','����Ư����ġ�� �������� ȿ���� 54','064','732','3828','skip','11:00','18:00','bk1.jpeg','bk2.png','bk3.png','bk4.png','bk5.png');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'��Ŭ����','33.244270','126.415033','����Ư����ġ�� �������� �߹������� 154-17','064','738','8866','skip','10:00','01:00','tc1.jpeg','tc2.jpeg','tc3.png','tc4.png','tc5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'��Ϲ��Ͽ콺','33.245919','126.578516','����Ư����ġ�� �������� ĥ�ʸ��� 228-13','070','4277','9922','skip','10:00','18:00','hmh1.jpeg','hmh2.jpeg','hmh3.jpeg','hmh4.jpeg','hmh5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���ʹٿ�','33.312877','126.596710','����Ư����ġ�� �������� 516�� 717','064','733','0632','skip','09:00','17:00','sg1.jpeg','sg2.jpeg','sg3.jpeg','sg4.jpeg','sg5.jpeg');

insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'��Ƽ�� ����','33.463284','126.309798','����Ư����ġ�� ���ֽ� �ֿ��� �ֿ���1�� 24-9','010','4925','9377','skip','10:00','20:00','kt1.jpeg','kt2.jpeg','kt3.jpeg','kt4.jpeg','kt5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'������ �Դ���','33.543712','126.668826','����Ư����ġ�� ���ֽ� ��õ�� �����ؾȷ� 519-10','064','702','0007','skip','07:00','23:55','dmd1.jpeg','dmd2.jpeg','dmd3.jpeg','dmd4.jpeg','dmd5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'���������Ŀ��','33.542061','126.671523','����Ư����ġ�� ���ֽ� ��õ�� �����ؾȷ� 552-3','064','784','5404','skip','07:00','22:00','ob1.jpeg','ob2.jpeg','ob3.jpeg','ob4.jpeg','ob5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'�ƺ�������Ŀ�� ������','33.512632','126.528865','����Ư����ġ�� ���ֽ� ������6�� 4','010','8857','0750','skip','10:00','21:00','ab1.jpeg','ab2.jpeg','ab3.jpeg','ab4.jpeg','ab5.jpeg');
insert into cafe (CNUM,NAME,XPOS,YPOS,ADDRESS,CTEL1,CTEL2,CTEL3,C_DATE,CTIME1,CTIME2,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5) 
values (cafeseq.nextval,'��˺��� ����','33.559502','126.728020','����Ư����ġ�� ���ֽ� ������ �����ؾȷ� 141','0507','1312','3506','skip','10:00','17:30','mbj1.jpeg','mbj2.jpeg','mbj3.jpeg','mbj4.jpeg','mbj5.jpeg');

Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'�󸶴� ������ ���� ȣ��','138,162','�󸶴�ȣ�� 1.jpg','�󸶴�ȣ�� 2.jpg','�󸶴�ȣ�� 3.jpg','�󸶴�ȣ�� 4.jpg','�󸶴�ȣ�� 5.jpg','�󸶴�ȣ�� 6.jpg','���� ���ֽ� ž���� 66','064-729-8100','���� Wi-Fi,�ǳ� ������,��쳪,����,��Ʈ�Ͻ� ����','���� �� Wi-Fi�� �׻� ����� �����ǹǷ� �������� ������ �������� �� ������ ������ ���Ͻ� �� �ֽ��ϴ�. ���� �ó��� ��ġ�� �־� ���� ��� �� �������� ������ �ֽ��ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 5���� ���� �� ��� ���Ҵ� ���������� ���� �� �������, �ǳ� ������ �� ��Ʈ�Ͻ� ������/�� �����մϴ�.','Superior Twin Mountain View','Mountain View Twin ','Superior Family Twin','Deluxe Twin Ocean View','161,594','166,780','161,594','169,470','33.518500','126.518524');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���� ������Ż ȣ�� �� ī����','100,184','���� ������Ż ȣ��1.jpg','���� ������Ż ȣ�� 2.jpg','���� ������Ż ȣ�� 3.jpg','���� ������Ż ȣ�� 4.jpg','���� ������Ż ȣ�� 5.jpg','���� ������Ż ȣ�� 6.jpg','���� ���ֽ� ž���� 47','064-752-8222','��쳪,���� ����,�뼭��','���� �� Wi-Fi�� �׻� ����� �����ǹǷ� �������� ������ �������� �� ������ ������ ���Ͻ� �� �ֽ��ϴ�. ���� �ó��� ��ġ�� �־� ���� ��� �� �������� ������ �ֽ��ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 5���� ���� �� ��� ���Ҵ� ���������� ���� �� �������, ��õ�� �� ��Ʈ�Ͻ� ������/�� �����մϴ�.','Standart Twin','Deluxe Twin Mountain View','Deluxe Twin Ocean View','Standard Room with City View','100,184','118,734','118,734','220,907','33.517315','126.519721');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'ȣ�� ����Ʈ ���� ����','259,508','ȣ�� ����Ʈ ���� ����1.jpg','ȣ�� ����Ʈ ���� ����2.jpg','ȣ�� ����Ʈ ���� ����5.jpg','ȣ�� ����Ʈ ���� ����2.jpg','ȣ�� ����Ʈ ���� ����4.jpg','ȣ�� ����Ʈ ���� ����6.jpg','���� ���ֽ� ���ε�2�� 20','02-777-5080','�߿� ������,24�ð� ����Ʈ ����ũ','���� �� Wi-Fi�� �׻� ����� �����ǹǷ� �������� ������ �������� �� ������ ������ ���Ͻ� �� �ֽ��ϴ�. ���� �ó��� ��ġ�� �־� ���� ��� �� �������� ������ �ֽ��ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 4���� ���� �� ��� ���Ҵ� ���������� ���� �� �������, ��Ʈ�Ͻ� ���� �� �ǿ� ��������/�� �����մϴ�.',' Standard Double Room with City View','Superior Twin','Deluxe Double','Standard Twin City View','259,508','300,680','313,200','333,580','33.517651','126.526846');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'����ȣ�� ����','198,182','����ȣ��1.jpg','����ȣ��2.jpg','����ȣ��3.jpg','����ȣ��4.jpg','����ȣ��5.jpg','����ȣ��6.jpg','���� ���ֽ� �﹫�� 12','064-745-7458','���� Wi-Fi,24�ð� ����Ʈ ����ũ,�������','��� ���� �� ���� Wi-Fi��/�� �����Ǵ� �� ���ҿ��� ��ſ� ������ �����ϼ���. ���� �ó��� ��ġ�� �־� ���� ��� �� �������� ������ �ֽ��ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 4���� ���Ҵ� ���� �Ǹ��ϰ� ��￡ ���� ������ �����ϱ� ���� ���������/�� ���߰� �ֽ��ϴ�.',' Standard Double Room - No Parking','Deluxe Twin Room - No Parking',' Deluxe Family Room - No Parking','Premium Deluxe Room - No Parking','198,182','231,818','254,525','282,645','33.489814','126.487717');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'ȣ�� ���� ���� ','150,638','ȣ�� ���� ����1.jpg','ȣ�� ���� ����2.jpg','ȣ�� ���� ����3.jpg','ȣ�� ���� ����4.jpg','ȣ�� ���� ����5.jpg','ȣ�� ���� ����6.jpg','���� ���ֽ� ������ 34','064-720-7704','���� Wi-Fi,���� ����,24�ð� ����Ʈ ����ũ',' ���� �� Wi-Fi�� �׻� ����� �����ǹǷ� �������� ������ �������� �� ������ ������ ���Ͻ� �� �ֽ��ϴ�. ���� �ó��� ��ġ�� �־� ���� ��� �� �������� ������ �ֽ��ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 4���� ���Ҵ� ������ ���� ��ſ��� ����Ű�� ���� ���� �� �پ��� ���ǽü��� ���� �� �ֽ��ϴ�','Deluxe Twin','�𷰽� �йи��� (Deluxe Family Room) ','�̱۷� (Single Room)','Junior Double','150,638','155,173','120,273','155,755','33.501884','126.532663');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'�غ�ġ ȣ�� �� ����Ʈ ����','254,962','�غ�ġ ȣ�� �� ����Ʈ ����1.jpg','�غ�ġ ȣ�� �� ����Ʈ ����2.jpg','�غ�ġ ȣ�� �� ����Ʈ ����3.jpg','�غ�ġ ȣ�� �� ����Ʈ ����4.jpg','�غ�ġ ȣ�� �� ����Ʈ ����5.jpg','�غ�ġ ȣ�� �� ����Ʈ ����6.jpg','���� �������� ǥ���� �μ��ؾȷ� 537','064-780-8100','�ǳ� ������,���� ����,24�ð� ����Ʈ ����ũ',' ������ ���꿡 ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 5���� ���� �� ��� ���Ҵ� ���������� ���� �� �������, �ǳ� ������ �� ��Ʈ�Ͻ� ���͸� �����մϴ�.','Hotel Superior Village View Twin Room','Hotel Superior Village View King Room','Hotel Deluxe Seaside Twin Room','Hotel Deluxe Seaside King Room','295,333','262,212','303,167','394,698','33.323129','126.844781');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'ī������ (Kaselodge)','1,282,116','ī������ (Kaselodge)1.jpg','ī������ (Kaselodge)2.jpg','ī������ (Kaselodge)3.jpg','ī������ (Kaselodge)4.jpg','ī������ (Kaselodge)5.jpg','ī������ (Kaselodge)6.jpg','���� �������� ǥ���� ���÷� 383','064-780-4800','���� Wi-Fi,�ǳ� ������,��쳪,���� ����,24�ð� ����Ʈ ����ũ,�������','������ ���꿡 ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�. �� 5���� ���Ҵ� ������ ���� ��ſ��� ����Ű�� ���� ���� �� �پ��� ���ǽü��� ���� �� �ֽ��ϴ�.','���� ���� ����Ʈ (Garden Spa Suite)','����Ʈ�� - �׶� (Suite with Terrace)','����Ʈ�� - ���� ���� (Suite with Spa Bath)','����Ʈ�� - ���� (Suite with Sea)','1,454,545','1,282,116','1,282,116','1,454,545','33.345552','126.786996');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���ÿ� ȣ�� (Rezion Hotel)','149,999','���ÿ� ȣ�� (Rezion Hotel)1.jpg','���ÿ� ȣ�� (Rezion Hotel)2.jpg','���ÿ� ȣ�� (Rezion Hotel)3.jpg','���ÿ� ȣ�� (Rezion Hotel)4.jpg','���ÿ� ȣ�� (Rezion Hotel)5.jpg','���ÿ� ȣ�� (Rezion Hotel)6.jpg','���� �������� ǥ���� ǥ�������� 263','064-787-8841','24�ð� ����Ʈ ����ũ,�뼭��','������ ���꿡 ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�. ������ �� ������ ����������� �湮�� ������. ���� ���� ������ ���� ������� �� ������ �� ���� �� Ư���� ���ǽü��� �����˴ϴ�.','Ocean View Double','Superior - Non-Smoking','Ocean Twin',' Haevichi Ocean View ','149,999','149,683','152,047','152,727','33.327163','126.833695');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���̾غ� ȣ�� (JnB Hotel)','142,924','���̾غ� ȣ�� (JnB Hotel)1.jpg','���̾غ� ȣ�� (JnB Hotel)2.jpg','���̾غ� ȣ�� (JnB Hotel)3.jpg','���̾غ� ȣ�� (JnB Hotel)4.jpg','���̾غ� ȣ�� (JnB Hotel)5.jpg','���̾غ� ȣ�� (JnB Hotel)6.jpg','���� �������� ���򳲷�30���� 10-12','0507-1432-8864','���� Wi-Fi,�߿� ������,���� ����','������ �������� ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 3���� ���Ҵ� ���� �Ǹ��ϰ� ��￡ ���� ������ �����ϱ� ���� �ǿ� ��������  ���߰� �ֽ��ϴ�.','Superior Double Room','Superior Triple','Superior Double Room','Family Suite','142,924','155,884','182,245','285,349','33.260598','126.592679');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'��ť�� �ڹ輭�� ����','144,000','��ť�� �ڹ輭�� ����1.jpg','��ť�� �ڹ輭�� ����2.jpg','��ť�� �ڹ輭�� ����3.jpg','��ť�� �ڹ輭�� ����4.jpg','��ť�� �ڹ輭�� ����5.jpg','��ť�� �ڹ輭�� ����6.jpg','���� �������� �ȴ��� ��â�� 365','064-793-1131','�ǳ� ������,��쳪,�뼭��,����,��Ʈ�Ͻ� ����','������ �߹��� ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 4���� ���� �� ��� ���Ҵ� ���������� ���� �� �������, ��Ʈ�Ͻ� ���� �� �ǿ� �������� �����մϴ�.','Deluxe Room',' Parlor Room','Deluxe Suite','Executive Suite','144,000','230,000','243,000','279,000','33.293809','126.348992');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���ֽŶ�ȣ��','338,800','�Ŷ�ȣ��5.jpg','�Ŷ�ȣ��1.jpg','�Ŷ�ȣ��2.jpg','�Ŷ�ȣ��3.jpg','�Ŷ�ȣ��4.jpg','�Ŷ�ȣ��6.jpg','���� �������� �߹�������72���� 75','064-735-1234','���� Wi-Fi,�߿� ������,�������,��Ʈ�Ͻ� ����','�Ŷ�ȣ���� �߿� �������� ����� �̿� �����ϸ�, �ǳ� ������, ��Ʈ�Ͻ� ���Ϳ� ��쳪�� �߰� ������� �̿��Ͻ� �� �ֽ��ϴ�. ��� ������� ���̹� �� ��̸� ���� �ǳ� �� �߿� Ȱ���� �پ��ϰ� �����˴ϴ�. �������� ����� �뿩�Ͻ� �� �ֽ��ϴ�.','Standard Double Room(Mountain view)','Standard Twin Room(Sea view)','Standard Twin Room(Mountain view)','Standard Double Room(Mountain view)','338,800 ��','338,800 ��','371,800 ��','371,800 ��','33.247881','126.408438');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'�󸶴� ������ ���� ȣ��','160,000','�󸶴�ȣ�� 1.jpg','�󸶴�ȣ�� 2.jpg','�󸶴�ȣ�� 3.jpg','�󸶴�ȣ�� 4.jpg','�󸶴�ȣ�� 5.jpg','�󸶴�ȣ�� 6.jpg','����Ư����ġ�� ���ֽ� �ﵵ�̵� 1254','064-729-8100','���� Wi-Fi,�ǳ� ������,���� ����,�������,��Ʈ�Ͻ� ����','�󸶴�������ȣ���� �� ���� 8,000�� �� �󸶴� �귣�� ȣ�� �� �ֻ������ ȣ�� �Դϴ� ���ֵ� ���� 5�� ȣ�ڷ� ���� ���Բ� �ֻ��� �ü��� ���񽺸� ���� �մϴ� ���� ȣ�� ��� ū ������ �����ϰ� �־� ����� �޽��� �����մϴ�','Superior Twin City view','Kids Sweet Mountain view','Habor Familiy Twin','Superior Twin Sea view','160,000','200,000','230,000 ','220,000','33.493483','126.534319');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���Ӽ� ���ֽ�ȭ����','408,000','���Ӽ� ���ֽ�ȭ����1.jpg','���Ӽ� ���ֽ�ȭ����2.jpg','���Ӽ� ���ֽ�ȭ����3.jpg','���Ӽ� ���ֽ�ȭ����4.jpg','���Ӽ� ���ֽ�ȭ����5.jpg','���Ӽ� ���ֽ�ȭ����6.jpg','���� �������� �ȴ��� ��ȭ�����304���� 89','1670-8800','���� Wi-Fi,�߿� ������,���� ����,���� ����,�뼭��,����','Ascott Cares ���� ���� �ܿ��� ��� �������� ��� ���� �� ���� Wi-Fi �� ���� �����ؼ� ���� ��� ���� ������ �̿��Ͻ� �� �ֽ��ϴ�. ','Family Suite Ondol ',' Camping in Somerset Kids Room','Family Suite ','Racing in Somerset Kids Room ','408,000','435,000','462,000','494,130','33.302674','126.316952');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'�޸���Ʈ ȣ�� ����','236,667','�޸���Ʈ ȣ�� ����1.jpg','�޸���Ʈ ȣ�� ����2.jpg','�޸���Ʈ ȣ�� ����3.jpg','�޸���Ʈ ȣ�� ����4.jpg','�޸���Ʈ ȣ�� ����5.jpg','�޸���Ʈ ȣ�� ����6.jpg','���� �������� �ȴ��� ��ȭ�����304����','1670-8800','�߿� ������,���� ����,�뼭��,����','�� ���ǿ��� ���� �ݰ�, �̴Ϲ�, ��� TV, å���� ����Ǿ� �ֽ��ϴ�. ���� ��ǿ��� ������ ��ġ�Ǿ� ������, ��� ����, ������̾�, ź(Thann) �귣���� ��ǿ�ǰ�� �����˴ϴ�.','Premier Room, Guest room','Premier Room, Guest room, 2 Twins','Family Room, Family room','Bedroom Presidential Suite','236,667','316,667','316,666','424,552','33.306580','126.318973');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���� ��ũ�� ���� ȣ��','380,165','���� ��ũ�� ���� ȣ��1.jpg','���� ��ũ�� ���� ȣ��2.jpg','���� ��ũ�� ���� ȣ��3.jpg','���� ��ũ�� ���� ȣ��4.jpg','���� ��ũ�� ���� ȣ��5.jpg','���� ��ũ�� ���� ȣ��6.jpg','���� �������� �ȴ��� ��ϳ��� 863','064-793-7000','���� ����,24�ð� ����Ʈ ����ũ','������ �߹��� ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�.','Deluxe Twin Western Room','Deluxe Twin Korean Room','Deluxe Double Western Room','Deluxe Double Korean Room','380,165','442,149','429,752','483,471','33.317717','126.387567');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'����Ϸ����� ȣ��','190,409','����Ϸ����� ȣ��1.jpg','����Ϸ����� ȣ��2.jpg','����Ϸ����� ȣ��3.jpg','����Ϸ����� ȣ��4.jpg','����Ϸ����� ȣ��5.jpg','����Ϸ����� ȣ��6.jpg','���� �������� �����431���� 3','064-762-6532','�������,�뼭��,����','������ �������� ��ġ�� �� ���Ҵ� ���� ��� �� ��̷ο� ��������� �������ϴ�. ������ �� ������ �����������/�� �湮�� ������. �� 4���� ���� �� ��� ���Ҵ� ���������� ���� �� ������� �� ��������/�� �����մϴ�.','Island Double Room','Premier Family Suite ',' Premier Family Suite','Premier Family Suite Cooking Allowed','190,409','290,044','143,264','300,260','33.245726','126.565768');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'�� ����Ʈ ���� ����','147,328','�� ����Ʈ ���� ����1.jpg','�� ����Ʈ ���� ����2.jpg','�� ����Ʈ ���� ����3.jpg','�� ����Ʈ ���� ����4.jpg','�� ����Ʈ ���� ����5.jpg','�� ����Ʈ ���� ����6.jpg','���� �������� ������ �����Ϸ� 26','0507-1401-0550','�ǳ� ������,�뼭��,��Ʈ�Ͻ� ����','���� â���� ��ġ�� ��� ������ Ŀ�� ���̺��� ����� �޽� ���� �� ������ å���� ���߰� �ֽ��ϴ�. ���Ǹ��� Ŀ��/�� �� ������ �����˴ϴ�. ���� ��ǿ��� ���� �񵥰� ��ġ�� ȭ���, ��ũ�� ���� �ü��� ���õǾ� �ֽ��ϴ�.','Standard Twin Room','Jacuzzi 1 King Bed','Standard Double Room','Standard Twin Room','147,328','150,000','152,052','161,490','33.449166','126.916523');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���� ������ �� ����','134,633','���� ������ �� ����1.jpg','���� ������ �� ����2.jpg','���� ������ �� ����3.jpg','���� ������ �� ����4.jpg','���� ������ �� ����5.jpg','���� ������ �� ����6.jpg','���� �������� ������ �Ű�� 11','0507-1374-8877','���� Wi-Fi,���� ����,�������','������ �䱸�� ���ϰ� ������ų �� �ֵ��� ���� �� ��������� �����մϴ�.','Deluxe Double','Deluxe Twin','Standard Double','Standard twin','134,633','153,636','142,360','152,480','33.437695','126.916358');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���ƫ�� ���� ���� ȣ��','147,530','���ƫ�� ���� ���� ȣ��1.jpg','���ƫ�� ���� ���� ȣ��2.jpg','���ƫ�� ���� ���� ȣ��3.jpg','���ƫ�� ���� ���� ȣ��4.jpg','���ƫ�� ���� ���� ȣ��5.jpg','���ƫ�� ���� ���� ȣ��6.jpg','���� �������� ������ ����� 31','064-744-7500','���� Wi-Fi,�߿� ������,�������','���������� ���� �� ������� �� �ǿ� �������� �����մϴ�.','Superior Twin','Deluxe Triple','Deluxe Family City View','Superior Twin','147,530','183,335','178,090','190,338','33.447933','126.916229');
Insert into hotel (HNUM,NAME,HPRICE,IMAGE,IMAGE2,IMAGE3,IMAGE4,IMAGE5,IMAGE6,ADDRESS,HTEL,FACILITY,HCONTENT,RNAME1,RNAME2,RNAME3,RNAME4,RPRICE1,RPRICE2,RPRICE3,RPRICE4,XPOS,YPOS) values (hotel_seq.nextval,'���ϸ� Ǯ �� ���� ȣ��','165,132','���ϸ� Ǯ �� ���� ȣ��1.jpg','���ϸ� Ǯ �� ���� ȣ��2.jpg','���ϸ� Ǯ �� ���� ȣ��3.jpg','���ϸ� Ǯ �� ���� ȣ��4.jpg','���ϸ� Ǯ �� ���� ȣ��5.jpg','���ϸ� Ǯ �� ���� ȣ��6.jpg','���� �������� ������ �ѵ��� 269-37 ���ϸ�ȣ��','0507-1418-0131','���� Wi-Fi,���� ����,24�ð� ����Ʈ ����ũ','���� ���� �ְ��� ������ �����Ͻø� ���ϸ�Ǯ�ؽ��� ȣ�� �� �����ϽǼ� �ֽ��ϴ�','POOL VILLA STANDARD','SUITE POOL VILLA','POOL VILLA SUITE','POOL VILLA TWIN','165,132','182,645','214,674','189,899','33.469066','126.935343');



Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'kihun@naver.com','123123','�����','2023-12-18','����Ư����ġ�� ���ֽ� ÷�ܷ� 242','123ȣ','010-0000-0000',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'3233035756','3233035756','����','2023-12-13','����Ư����ġ�� ���ֽ� ÷�ܷ� 242','123ȣ','010-0000-0000',5);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'chajun@naver.com','123123','����ȣ','2023-12-14','��� ������ �д籸 �Ǳ�����10���� 16','231ȣ','010-2222-2222',5);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'abc@naver.com','123123','��μ�','2020-01-01','�泲 ���ɽ� �̻�� �ݴ�� 30','�ݴ����Ʈ 1�� 101ȣ','010-0000-0000',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'asd@naver.com','123123','���¾�','2022-05-12','��� �ȼ��� ����� ���Ӹ��� 8','Ǫ������ 1�� 101ȣ','010-1234-1234',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'3247975079','3247975079','ä��','2021-08-28','��� ���ý� ������ ����ȫ���� 64','Ǫ������ 1�� 101ȣ','010-1234-1234',6);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'asdf@daum.net','asdf1234','ȫ�浿','2023-12-30','����Ư����ġ�� ���ֽ� ÷�ܷ� 242','asdf','010-1234-5678',8);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'zxcv@nate.com','zxcv1234','ä��','2023-12-06','��� ������ �д籸 �Ǳ����� 166','īī�� �Ǳ� ����Ʈ','010-9876-5432',7);
Insert into member (NUM,EMAIL,PASSWORD,NAME,BIRTH,ADDRESS1,ADDRESS2,MTEL,MYJNUM) values (member_seq.nextval,'jh7286@gmail.com','Junhyeong5897','������','1999-11-17','��õ �߱� �ϴú����� 66','902�� 3003ȣ','010-2873-7206',4);


Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'����ȣ','4��5�� ��������',to_date('23/12/30','RR/MM/DD'),1,'�������̶� �Բ��� �������� ���� ���� �������̰� ȣ���̰� ���� �� ���Ҿ��','0:0:0:0:0:0:0:1','al1.jpeg','chajun@naver.com','1','2024-2-25',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'����ȣ','ģ���� 1��2�� ����',to_date('23/12/30','RR/MM/DD'),0,'�������� ���� �ʹ� ���־��� Ư�� ����� ����','0:0:0:0:0:0:0:1','chunje5.jpeg','chajun@naver.com','2','2024-1-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'����ȣ','���� ����ġ��',to_date('23/12/30','RR/MM/DD'),0,'���ڱ� ���ֵ� ���� �; ���� ����ġ�� ���� �ʹ� �ູ�� ���� �����̾���','0:0:0:0:0:0:0:1','nok1.jpeg','chajun@naver.com','3','2024-1-14',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'�����','3��4�ϰ��� p���� ����',to_date('23/12/30','RR/MM/DD'),4,'ģ������ �� p���� ���� �ϰ� ������� �ڵ��������� ���� ��������  ��ġ���� �����ؼ� ���� ��ȹ¥�� �ʹ� ���Ҵ�','0:0:0:0:0:0:0:1','handam4.jpeg','kihun@naver.com','1','2024-1-17',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'�����','���ִ°� ������ �� ���ֵ�',to_date('23/12/30','RR/MM/DD'),0,'����ļ� ���ϰ� ���� �ϰ� ����ͷ� ��ȹ ������ ¥�� ������ ��','0:0:0:0:0:0:0:1','road2.jpeg','kihun@naver.com','2','2024-2-12',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'�����','���� �������� 1��2��',to_date('23/12/30','RR/MM/DD'),0,'���ֵ� �ϸ� ��� ������ ����','0:0:0:0:0:0:0:1','hello.jpg','kihun@naver.com','3','2024-1-16',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'����','�賭�ߴ� ����̺� ����',to_date('23/12/30','RR/MM/DD'),0,'���� ���� �� �������� �־ ��ȹ�ؼ� �Ϸ����� ����̺� ���� �ߴ� ��','0:0:0:0:0:0:0:1','nok2.jpeg','3233035756','1','2024-1-24',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'����','�����ϰ��� ���ֵ� ��Ȱ���� ����',to_date('23/12/30','RR/MM/DD'),0,'���ֵ� ��Ȱ �ϱ����� ������� �����ϰ� ���ֵ��� �־��� ����','0:0:0:0:0:0:0:1','9.81p0.jpeg','3233035756','2','2024-1-14',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'����','1��2�� ����',to_date('23/12/30','RR/MM/DD'),0,'���ִ°� �� ���� ���ֵ� �㿡 �� �;��� ��','0:0:0:0:0:0:0:1','���� ������ �� ����1.jpg','3233035756','3','2024-1-1',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'��μ�','�ູ�� ���ֵ� ����~',to_date('23/12/30','RR/MM/DD'),7,'���� �� �� �ִ� ��ȸ�� ���ܼ� ���ֵ��� ���� ���� �Ծ��.
�ʹ� ��ſ� ������ �ϰ�Ծ��~','0:0:0:0:0:0:0:1','9.81p1.jpeg','abc@naver.com','1','2024-1-24',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'��μ�','7�ϰ� ������ ���ֵ�',to_date('23/12/30','RR/MM/DD'),1,'������ �� ���ֵ��� ������ �������. ���� ���� �����ϰ� ü�赵 �ϸ�
��ſ� ������ ������ �Ծ��','0:0:0:0:0:0:0:1','chunje1.jpeg','abc@naver.com','2','2024-1-2',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'��μ�','�޽� ����',to_date('23/12/30','RR/MM/DD'),1,'���� ���� ���ֵ��� ������ ���� �Ծ��. ���ֵ����� ���� �����ϸ� �ູ�� ������ ���� �Խ��ϴ�~','0:0:0:0:0:0:0:1','handam5.jpeg','abc@naver.com','3','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'���¾�','���� �� ������ ����~',to_date('23/12/30','RR/MM/DD'),2,'�ָ��� ���ֵ��� ������ �ٳ�Դµ� �ʹ� �ູ�� �ָ��̿����.
�������� ��ȸ�� �Ǹ� �ٳ�;߰ھ�� ����','0:0:0:0:0:0:0:1','dudo2.jpeg','asd@naver.com','1','2024-2-17',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'���¾�','������ �Բ� ������ ����',to_date('23/12/30','RR/MM/DD'),0,'������ �ð��� �¾Ƽ� ���ֵ��� ���� �ٳ�Ծ��.
�ʹ� ���� �ð��� ���°� ���� �������� ���ƴٴϸ�, ���ִ� ���ĵ� �Ծ����.
���ֵ� ���� �����մϴ�!','0:0:0:0:0:0:0:1','mb1.jpeg','asd@naver.com','2','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'���¾�','������ ������ �ູ��',to_date('23/12/30','RR/MM/DD'),0,'�������� ���ֵ�!
�� ����Ʈ�� ���� ������ ��õ �޾Ƽ� ���ֵ� ������ �ٳ�Ծ��.
������ �ʹ� ����, ���ִ� ���İ� ���� �������� �����ϸ� ���� �ð� ������ �Ծ�� ����','0:0:0:0:0:0:0:1','hunje3.jpeg','asd@naver.com','3','2024-1-24',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ä��','ģ����� �Բ��ϴ� ���ֵ� ����',to_date('23/12/30','RR/MM/DD'),0,'ģ����� �������� ������ ���ֵ��� ��Ծ��.
�ٴٵ� ����, ������ ����, �ʹ� ��ſ� �ð� ������ �Ծ��~','0:0:0:0:0:0:0:1','kimne2.jpeg','3247975079','1','2024-2-23',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ä��','������ ��ȹ���!',to_date('23/12/30','RR/MM/DD'),0,'��ȹ�� ���ϰ� ���ֵ��� ������ �ٳ�Ծ��.
�ʹ� �ູ�� �ð��� ���°�, ���� ü��� �������� �����ϰ�, ������ ��ȸ�� �Ǹ� �� �ٽ� � ���� �ͳ׿� ����','0:0:0:0:0:0:0:1','borim3.jpeg','3247975079','2','2024-1-1',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ä��','ª�� �ð������� �ູ�ߴ�.',to_date('23/12/30','RR/MM/DD'),0,'2���̶�� ª�� �ð� ���� ���ֵ��� ���� ���� ���� ���� ���ƴٴϸ� ������ �ϰ�, ���ִ� ���ĵ� �԰�, ī�䵵 �ٳ����� �ð��� �ʹ� ª�Ƽ� �ƽ��� �����̿����.
���� ������ ������ ��� ��� ����ϰ� ���� �� �ſ���!','0:0:0:0:0:0:0:1','road2.jpeg','3247975079','3','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'������','�Ϸ�� ����, �Ϸ�� ������',to_date('23/12/30','RR/MM/DD'),0,'�Ϸ縸�� ������ ���ƿ�~^^','0:0:0:0:0:0:0:1','2.png','jh7286@gmail.com','1','2024-1-3',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'������','������ �ٴϴ� ���� ����',to_date('23/12/30','RR/MM/DD'),0,'���� �״�� ������ �ٴϴ� ���� ����~!','0:0:0:0:0:0:0:1','ts2.jpeg','jh7286@gmail.com','3','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'������','���ؿ� ���ֿ���',to_date('23/12/30','RR/MM/DD'),0,'������ ���ؿ� ���ֿ��� ������~','0:0:0:0:0:0:0:1','handam5.jpeg','jh7286@gmail.com','2','2024-1-1',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ȫ�浿','���ֵ� ������ ���� �ñ��!!!',to_date('23/12/30','RR/MM/DD'),3,'����','0:0:0:0:0:0:0:1','camel5.jpeg','asdf@daum.net','4','2023-12-30',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ȫ�浿','��� �԰� ���� ������~!',to_date('23/12/30','RR/MM/DD'),0,'���� ���ȴ�....','0:0:0:0:0:0:0:1','subji3.jpeg','asdf@daum.net','2','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ȫ�浿','�������� ��½��½',to_date('23/12/30','RR/MM/DD'),0,'���ϵ��� ���� ��ҿ� ������ �����̴�...','0:0:0:0:0:0:0:1','sangum1.jpeg','asdf@daum.net','1','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ä��','�� ������... ������ ��������...',to_date('23/12/30','RR/MM/DD'),0,'����... ���ַ� ��������...','0:0:0:0:0:0:0:1','bija0.jpeg','zxcv@nate.com','4','2024-1-14',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ä��','�������� ���� �������� ��~',to_date('23/12/30','RR/MM/DD'),0,'���ַ� ��~~~~','0:0:0:0:0:0:0:1','chunje4.jpeg','zxcv@nate.com','3','2024-1-10',null,0);
Insert into board (NUM,WRITER,TITLE,REG_DATE,READCOUNT,CONTENT,IP,IMAGE,MEMAIL,JNUM,MINDATE,MAXDATE,LIKES) values (boardseq.nextval,'ä��','���ֵ� ���� ���� ����?',to_date('23/12/30','RR/MM/DD'),0,'�γ� Ǯ������ ���� �ƴ� ���ϵ���!','0:0:0:0:0:0:0:1','camel1.jpeg','zxcv@nate.com','1','2024-1-10',null,0);




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

