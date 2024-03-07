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
VALUES (seq_member_id.NEXTVAL, '1998-06-29', '����', '�λ걤���� �ؿ�뱸 �ߵ�', '010-4044-4444', 'https://cliimage.commutil.kr/phpwas/restmb_allidxmake.php?pp=002&idx=3&simg=20170712195535009572d12411ff9587970114.jpg&nmt=12');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1990-03-12', '��Ÿ', '����Ư���� ������ �ߵ�', '010-1234-4444', 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1991-05-23', '��ȿ��', '����Ư���� ������ �ߵ�', '010-9822-4224', 'https://img.freepik.com/premium-photo/caricature-of-a-carrot-with-a-face-and-limbs-generative-ai_252214-6349.jpg?w=2000

');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1992-07-27', '�ٴ�', '����Ư���� ����� �ߵ�', '010-4467-2454', 'https://png.pngtree.com/thumb_back/fh260/background/20230609/pngtree-three-puppies-with-their-mouths-open-are-posing-for-a-photo-image_2902292.jpg
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1993-11-19', '���¿�', '����Ư���� ������ �ߵ�', '010-7014-1244', 'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/4arX/image/rZ1xSXKCJ4cd-IExOYahRWdrqoo.jpg');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1994-12-04', '��ȣ��', '�뱸������ ������ �ߵ�', '010-8344-8894', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUepaBdMZtoy5GmiKF_v1vkRbwo3MgxAiIwcaztDaqiYwLdV58jhq19hUX00btfdkBUF8&usqp=CAU 
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1995-09-02', '���¿�', '����������  ���� �ߵ�', '010-7744-4477', ' https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/cnoC/image/tfQwmqh621xPopjfnJ9wXkfrBcc.jpg
');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1996-08-24', '����', '�λ걤���� �ؿ�뱸 �µ�', '010-1253-8964', 'https://i.pinimg.com/736x/05/fe/0c/05fe0c269a225ac1251fff5bc74483ef.jpg');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '1997-02-15', 'ī����', '��õ������ ���� �ߵ�', '010-2834-5315', 'https://www.moneynet.co.kr/files/attach/images/33793530/304/717/049/0d8e9d6eee5e97ac11f96085c56072ab.jpg');

INSERT INTO member(member_num, member_birth, member_nickname, member_address, member_tel, member_profile) 
VALUES (seq_member_id.NEXTVAL, '2000-07-11', '�ռ���', '����Ư���� ���ֽ� �ƶ��ϵ�', '010-2427-2453', 'https://cdnimage.dailian.co.kr/news/201802/news_1518415236_693408_m_1.jpg');




---------------------------item_ctgr--------------------------------------------------------------------------------



INSERT INTO ITEM_CTGR VALUES ( 1, '�����б��') ;
INSERT INTO ITEM_CTGR VALUES ( 2, '��Ȱ����') ;
INSERT INTO ITEM_CTGR VALUES ( 3, '�Ƿ�') ;
INSERT INTO ITEM_CTGR VALUES ( 4, '�Ƶ�') ;
INSERT INTO ITEM_CTGR VALUES ( 5, '������') ;
INSERT INTO ITEM_CTGR VALUES ( 6, '��ǰ') ;
INSERT INTO ITEM_CTGR VALUES ( 7, '���') ;
INSERT INTO ITEM_CTGR VALUES ( 8, '��ϴ�') ;

COMMIT;




------------------comm_ctgr---------------------------------------------------------------------------------------------------------------------------------------

insert into comm_ctgr values( 1,'�α�');
insert into comm_ctgr values( 2,'����');
insert into comm_ctgr values( 3,'����');
insert into comm_ctgr values( 4,'��������');
insert into comm_ctgr values( 5,'�н�');
insert into comm_ctgr values( 6,'��ǻ��');

commit;









--------------------------comm_board------------------------------------------------------------------------------------------------------------------------------



insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'�������� �Ϸ翡 10�и� �����ϸ� ���ڰ� �� �� �ֽ��ϴ�. ','���ڵǴ� ��',1,to_date('21-04-23','yy-mm-dd'),9);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'��31�� ���ڰ� ��õ���׿� �϶����� �Ⱦ� ���µ� ���װ��ôº� ��������ױ��� īǮ�մϴ� ~ ���޶� ���⳻������ ���� ���������� ����� �����ϰԵ� īǮ���ּż� ���ϰ� ���� ������־ �÷����ϴ�^^ ','���� (3.7)���� 6��30�� ��� ��������Ÿ��ʿ���',1,to_date('20-01-13','yy-mm-dd'),6);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'ġŲ�԰�;�� ������ ���ڴ� ','�������ʿ� ġŲƮ�� �µ� �־��?',1,to_date('22-11-03','yy-mm-dd'),7);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� ������ ��� ������ ����� ������� ���� �˾ƺ�����?  ���� ��� 8������ ������ �������� ���� ����� �������� �˾ƺ��°� �������?
 ','���� ��� �ñ���',2,to_date('24-01-01','yy-mm-dd'),3);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'�ȳ��ϼ���:) �� �� ���� �̻�ͼ� ���� ǲ������ ���� ���� �Ǿ�  ���� �౸�����̶� �ٳຼ�� �մϴ�.  ������ �� ������ �Ұ� ��Ź����� �����մϴ�
 ','������ó �����౸���� ���ǵ帳�ϴ�',2,to_date('23-07-16','yy-mm-dd'),1);


insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,' ������ �ϰ� ������
 ','���� �� ���ϴ� �� �ֳ���',2,to_date('23-09-12','yy-mm-dd'),2);
 
 
 

insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,' ��� �޾��ּ���!
 ','���̽� ġ�ôº� ��Ű���?',3,to_date('23-05-02','yy-mm-dd'),4);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� ���屹�� ���������ϽǷ���? 3 0 ��

 ','��������ó����Ͻź�',3,to_date('23-06-11','yy-mm-dd'),8);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� ���뱸û �տ� ����ŷ�ʿ� ������� �Կ��ϴµ� ���� �ƽôº�?
 ','���� ���뱸û �տ� ����ŷ�ʿ� ������� �Կ��ϴµ� ���� �ƽôº�?',3,to_date('23-10-01','yy-mm-dd'),7);
 
 
 
 
 
 
 
 insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'����αٿ� ���������� �˷��ֽʽÿ�. ���� �ٴϴ� �������� ���� �ȵ���. �ʹ� ��������� ȯ�ڸ� ����ϴ°� ���ƿ�

 ','��������',4,to_date('23-05-10','yy-mm-dd'),4);







insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'�ʹ� ���� �����Ÿ��� ���ϰ� ��ħ�� ���ɴϴ�'. '���� �ȳ��� ���ֽø� �����մϴ�.

 ','���̾��Ŀ�',4,to_date('23-01-21','yy-mm-dd'),8);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���뱸 �ʿ� ��ž���� �� ���ϰ� ��������, �Ź��� �� ���׿�� �� ���� �� ã�ƺ� �� �ִ� ����� �������?

 ','���뱸 ��ž��',4,to_date('23-12-11','yy-mm-dd'),5);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'� �߰� �����̱��� ���� ũ���� ���� ���޶�Ͼ� �Դϴ� ���� ���� ��� �޾��ּ��� �̤�',  '���� �� �鵹�̸� �о� ���Ⱦ�� �̤Ѥ�
',5,to_date('23-02-12','yy-mm-dd'),9);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� ���� 5�ÿ� ���������� �������� üũī�� �н��ߴµ� ���忡 ���� �нǹ��� ���ٰ� �ϳ׿� Ȥ��
���� �� ��ø� ��۷� �� �˷��ּ��� �̤̤�','���� ���� 5�ÿ� ������ ��Ÿ�������� ī�� �ֿ�ź�?',5,to_date('23-06-01','yy-mm-dd'),1);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� ����� �տ� �����Ÿ� ��� �������µ� ���� �������׿� ������ ���� ������ ������ �Դϴ� Ȥ�� ã�� �ֽô� �� ������ ��� �ص帱�Կ� �̤� 
�ε� ����ũ�� ������ �������Դϴ�.!!',
'���� ���� 9���� �����Ÿ� �Ҿ� ���Ƚ��ϴ�. ',5,to_date('23-01-30','yy-mm-dd'),4);




insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� Ȩ�÷��� 1�� �̵�� �� �������� �츮���� üũī�带 �ֿ����ϴ�. �׳� ������ ������ �ٱ� �ϴٰ� ���⿡�� �� �ø��ϴ�!! ī�� ������ ��x�� 98��1�� 30�� ���̶�� �����ֽ��ϴ�.!',
' üũī�带 �ֿ����ϴ�. ',5,to_date('24-02-27','yy-mm-dd'),6);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� �� ������ ��ó ȣ������ 50�� ���ڽý��� �߰ߵƴٰ� �ϳ׿� �̤� �ٵ� �����ϼ���',
' ������ ���� �ý� ',6,to_date('24-03-06','yy-mm-dd'),3);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� �㸸 �Ǹ� ���� �ٿ� ��� ������ �ɾƼ� �����׿� �̤� ������ ���� ���� �� �ߴµ� �ٵ� ������ �����δ� �����ٴϽ��� �ʴ°� ������ ���ƿ� !!',
' ��� �� ',6,to_date('23-08-27','yy-mm-dd'),4);





insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� �����ʵ��б� �տ��� ��ȸ�� �ϴ� ������ �ʵ��л� ���̰� ġ�� ũ�� ���ƴٰ� �ϳ׿� �����鵵 ������ �ٳ�� ������ ���ȿ��� ���� ���̵鿡�� ���� ������ Ȯ���� ��ų �ʿ䰡 ������ ���׿� �̤� ������ �����ϴ� �̤̤̤�',
' ������ �� ������ ',6,to_date('23-2-27','yy-mm-dd'),2);






insert into comm_board(COMM_BOARD_NUM,COMM_CONTENT,COMM_TITLE,COMM_CTGR_NUM,COMM_UPLOAD_DATE,MEMBER_NUM)

values(seq_board.nextval,'���� ū ��Ÿ��� �ִ� 5��� �� ������ ������ �ð� �η����׿� �̤� ���� ������ �����ִ� ��ȣ�� ���� ���翴�µ� �η����ϱ� ���� ������ �� �����ϴ� �̤�',
'500�� �� ���� ... ',6,to_date('22-08-16','yy-mm-dd'),8);



--------cmt_board_like---------------------------------------------------------------------------------------------------------------------------

insert into cmt_board_lke values(1,1,1)



CMT_BOARD_LIKE
CMT_LIKE_NUM(PK)	N/A	NUMBER
MEMBER_NUM(FK)	N/A	NUMBER
COMM_BOARD_NUM(FK)	N/A	NUMBER






