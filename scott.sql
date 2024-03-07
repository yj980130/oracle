ALTER sequence seq_board
increment by 1;
start with 1
nocycle
nocache;


rollback;

select *
from comm_board;




-------------------------member----------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE member MODIFY (member_manner_points DEFAULT '36.5');

CREATE SEQUENCE SEQ_MEMBER_ID
START WITH 1
INCREMENT BY 1;



INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1998-06-29', '진돌', '부산광역시 해운대구 중동', '010-4044-4444', 'https://cliimage.commutil.kr/phpwas/restmb_allidxmake.php?pp=002&idx=3&simg=20170712195535009572d12411ff9587970114.jpg&nmt=12');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1990-03-12', '강타', '서울특별시 강남구 중동', '010-1234-4444', 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1991-05-23', '이효리', '서울특별시 강남구 중동', '010-9822-4224', 'https://img.freepik.com/premium-photo/caricature-of-a-carrot-with-a-face-and-limbs-generative-ai_252214-6349.jpg?w=2000

');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1992-07-27', '바다', '서울특별시 노원구 중동', '010-4467-2454', 'https://png.pngtree.com/thumb_back/fh260/background/20230609/pngtree-three-puppies-with-their-mouths-open-are-posing-for-a-photo-image_2902292.jpg
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1993-11-19', '김태우', '서울특별시 마포구 중동', '010-7014-1244', 'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/4arX/image/rZ1xSXKCJ4cd-IExOYahRWdrqoo.jpg');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1994-12-04', '손호영', '대구광역시 수성구 중동', '010-8344-8894', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUepaBdMZtoy5GmiKF_v1vkRbwo3MgxAiIwcaztDaqiYwLdV58jhq19hUX00btfdkBUF8&usqp=CAU 
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1995-09-02', '차승원', '대전광역시  서구 중동', '010-7744-4477', ' https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/cnoC/image/tfQwmqh621xPopjfnJ9wXkfrBcc.jpg
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1996-08-24', '원빈', '부산광역시 해운대구 좌동', '010-1253-8964', 'https://i.pinimg.com/736x/05/fe/0c/05fe0c269a225ac1251fff5bc74483ef.jpg');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1997-02-15', '카리나', '인천광역시 남구 중동', '010-2834-5315', 'https://www.moneynet.co.kr/files/attach/images/33793530/304/717/049/0d8e9d6eee5e97ac11f96085c56072ab.jpg');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '2000-07-11', '손석구', '제주특별시 제주시 아라일동', '010-2427-2453', 'https://cdnimage.dailian.co.kr/news/201802/news_1518415236_693408_m_1.jpg');




---------------------------item_ctgr--------------------------------------------------------------------------------



INSERT INTO ITEM_CTGR VALUES ( 1, '디지털기기') ;
INSERT INTO ITEM_CTGR VALUES ( 2, '생활가전') ;
INSERT INTO ITEM_CTGR VALUES ( 3, '의류') ;
INSERT INTO ITEM_CTGR VALUES ( 4, '아동') ;
INSERT INTO ITEM_CTGR VALUES ( 5, '스포츠') ;
INSERT INTO ITEM_CTGR VALUES ( 6, '식품') ;
INSERT INTO ITEM_CTGR VALUES ( 7, '취미') ;
INSERT INTO ITEM_CTGR VALUES ( 8, '삽니다') ;

COMMIT;




------------------comm_ctgr---------------------------------------------------------------------------------------------------------------------------------------

insert into comm_ctgr values( 1,'인기');
insert into comm_ctgr values( 2,'자유');
insert into comm_ctgr values( 3,'질문');
insert into comm_ctgr values( 4,'정보공유');
insert into comm_ctgr values( 5,'분실');
insert into comm_ctgr values( 6,'사건사고');

commit;









--------------------------comm_board------------------------------------------------------------------------------------------------------------------------------



insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'누구든지 하루에 10분만 투자하면 부자가 될 수 있습니다. ','부자되는 법',1,to_date('21-04-23','yy-mm-dd'),9);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'전31살 남자고 인천공항에 일때문에 픽업 가는데 공항가시는분 있으면공항까지 카풀합니다 ~ 연휴때 고향내려가는 차편 매진됬을때 어떤분이 감사하게도 카풀해주셔서 편하게 갔던 기억이있어서 올려봅니다^^ ','내일 (3.7)오전 6시30분 출발 동수원사거리쪽에서',1,to_date('20-01-13','yy-mm-dd'),6);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'치킨먹고싶어요 있으면 좋겠다 ','망포동쪽에 치킨트럭 온데 있어요?',1,to_date('22-11-03','yy-mm-dd'),7);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'보통 기존에 살던 전세집 계약일 몇달전에 집을 알아보나요?  예를 들어 8월말이 만료라면 언제부터 새로 계약할 전세집을 알아보는게 좋을까요?
 ','전세 계약 궁금증',2,to_date('24-01-01','yy-mm-dd'),3);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'안녕하세요:) 얼마 전 수원 이사와서 기존 풋살팀은 갈수 없게 되어  성인 축구교실이라도 다녀볼까 합니다.  괜찮은 곳 있으면 소개 부탁드려요 감사합니다
 ','망포근처 성인축구교실 문의드립니다',2,to_date('23-07-16','yy-mm-dd'),1);


insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,' 히피펌 하고 싶은데
 ','남자 펌 잘하는 곳 있나요',2,to_date('23-09-12','yy-mm-dd'),2);
 
 
 

insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,' 댓글 달아주세요!
 ','베이스 치시는분 계신가요?',3,to_date('23-05-02','yy-mm-dd'),4);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'저랑 해장국에 소주한잔하실래요? 3 0 남

 ','망포역근처퇴근하신분',3,to_date('23-06-11','yy-mm-dd'),8);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'지금 영통구청 앞에 버거킹쪽에 사람많고 촬영하는데 뭔지 아시는분?
 ','지금 영통구청 앞에 버거킹쪽에 사람많고 촬영하는데 뭔지 아시는분?',3,to_date('23-10-01','yy-mm-dd'),7);
 
 
 
 
 
 
 
 insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'영통부근에 좋은내과좀 알려주십시요. 지금 다니는 연세내과 맘에 안들어서요. 너무 상업적으로 환자를 상대하는것 같아요

 ','병원문의',4,to_date('23-05-10','yy-mm-dd'),4);







insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'너무 목이 간질거리며 심하게 기침이 나옵니다'. '병원 안내좀 해주시면 감사합니다.

 ','목이아파요',4,to_date('23-01-21','yy-mm-dd'),8);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'영통구 쪽에 옥탑방을 좀 구하고 싶은데요, 매물이 잘 없네요ㅠ 앱 말고 방 찾아볼 수 있는 방법좀 있을까요?

 ','영통구 옥탑방',4,to_date('23-12-11','yy-mm-dd'),5);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'어른 중간 정강이까지 오는 크기의 갈색 포메라니안 입니다 보신 분은 댓글 달아주세요 ㅜㅜ',  '저희 집 백돌이를 읽어 버렸어요 ㅜㅡㅜ
',5,to_date('23-02-12','yy-mm-dd'),9);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'오늘 오후 5시에 망포역에서 국민은행 체크카드 분실했는데 매장에 들어오 분실물이 없다고 하네요 혹시
보신 분 계시면 댓글로 좀 알려주세요 ㅜㅜㅜ','오늘 오후 5시에 망포역 스타벅스에서 카드 주우신분?',5,to_date('23-06-01','yy-mm-dd'),1);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'오늘 경희대 앞에 자전거를 잠깐 세워놨는데 누가 가져갔네요 저한테 정말 소중한 자전거 입니다 혹시 찾아 주시는 분 있으면 사례 해드릴게요 ㅜㅜ 
로드 바이크고 색상은 빨강색입니다.!!',
'오늘 오전 9시쯤 자전거를 잃어 버렸습니다. ',5,to_date('23-01-30','yy-mm-dd'),4);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'오늘 홈플러스 1층 이디야 앞 복도에서 우리은행 체크카드를 주웠습니다. 그냥 경찰에 가져다 줄까 하다가 여기에다 글 올립니다!! 카드 주인은 김x진 98년1월 30일 생이라고 적혀있습니다.!',
' 체크카드를 주웠습니다. ',5,to_date('24-02-27','yy-mm-dd'),6);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'어제 밤 수원대 근처 호수에서 50대 여자시신이 발견됐다고 하네요 ㅜㅜ 다들 조심하세요',
' 수원대 여자 시신 ',6,to_date('24-03-06','yy-mm-dd'),3);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'요즘 밤만 되면 전깃 줄에 까마귀 떼들이 앉아서 난리네요 ㅜㅜ 저번에 새똥 맞을 뻔 했는데 다들 전깃줄 밑으로는 지나다니시지 않는게 좋을거 같아요 !!',
' 까마귀 떼 ',6,to_date('23-08-27','yy-mm-dd'),4);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'오늘 영동초등학교 앞에서 우회전 하는 차량에 초등학생 아이가 치여 크게 다쳤다고 하네요 차량들도 조심히 다녀야 겠지만 집안에서 각자 아이들에게 교통 교육을 확실히 시킬 필요가 있을거 같네요 ㅜㅜ 걱정이 많습니다 ㅜㅜㅜㅜ',
' 영동초 앞 교통사고 ',6,to_date('23-2-27','yy-mm-dd'),2);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'오늘 큰 사거리에 있는 5백년 된 나무가 번개를 맡고 부러졌네요 ㅜㅜ 뭔가 마을을 지켜주는 수호신 같은 존재였는데 부러지니까 괜히 마음이 안 좋습니다 ㅜㅜ',
'500년 된 나무 ... ',6,to_date('22-08-16','yy-mm-dd'),8);



--------cmt_board_like---------------------------------------------------------------------------------------------------------------------------

insert into cmt_board_lke values(1,1,1)



CMT_BOARD_LIKE
CMT_LIKE_NUM(PK)	N/A	NUMBER
MEMBER_NUM(FK)	N/A	NUMBER
COMM_BOARD_NUM(FK)	N/A	NUMBER






