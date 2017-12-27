--ѧ����tblStudent�����StuId������Stuname������Stuage���Ա�Stusex��
CREATE table tb_student(
sid nvarchar(32) primary key,
sname nvarchar(16) not null,
sage int,
ssex nvarchar(8) check(ssex='��'or ssex='Ů') default'��'
)
--�γ̱�tblCourse���γ̱��CourseId���γ�����CourseName����ʦ���TeaId��
CREATE table tb_course(
cid nvarchar(32) primary key,
cname  nvarchar(16) not null,
tid nvarchar(32)
foreign key (tid) references tb_teacher(tid)
)
--�ɼ���tblScore��ѧ�����StuId���γ̱��CourseId���ɼ�Score��
CREATE table tb_score(
sid nvarchar(32),
cid nvarchar(32),
foreign key (sid) references tb_student(sid),
foreign key (cid) references tb_course(cid),
score int
)
--��ʦ��tblTeacher����ʦ���TeaId������TeaName��
CREATE table tb_teacher(
tid nvarchar(32) primary key,
tname nvarchar(16) not null
)
--ѧ��������
INSERT into tb_student 
select '1000','���޼�',18,'��' union
select '1001','������',19,'Ů' union
select '1002','���',19,'��' union
select '1003','����',18,'Ů' union
select '1004','С��Ů',17,'Ů' union
select '1005','������',18,'��' union
select '1006','�����',19,'��' union
select '1007','��ӯӯ',20,'Ů' union
select '1008','����ɺ',19,'Ů' union
select '1009','ΤС��',18,'��' union
select '1010','����',17,'Ů' union
select '1011','����',19,'��' union
select '1012','����',18,'Ů' union
select '1013','����',19,'��' union
select '1014','�ܲ�ͨ',19,'��' union
select '1015','����',20,'Ů' union
select '1016','����ˮ',21,'Ů' union
select '1017','��ҩʦ',18,'��' union
select '1018','��Ī��',18,'Ů' union
select '1019','��Ĭ��',17,'��' union
select '1020','������',17,'��' union
select '1021','����',18,'Ů'
--��ʦ������
insert  into tb_Teacher
select '001','Ҧ��' union
select '002','Ҷƽ' union
select '003','Ҷ��' union
select '004','���ǻ�' union
select '005','�������' union
select '006','��ǧ��' union
select '007','��ǧ��' union
select '008','��־��' union
select '009','����' union
select '010','��ܽ��' union
select '011','١����' union
select '012','��չ��' union
select '013','�����' union
select '014','�����' union
select '015','����ȱ' union
select '016','�𲻻�' union
select '017','�ǵ�' 
--�γ̱�����
insert into tb_Course
select '001','��ҵ����','002' union
select '002','���˼','008' union
select '003','UML','006' union
select '004','���ݿ�','007' union
select '005','�߼���·','006' union
select '006','Ӣ��','003' union
select '007','���ӵ�·','005' union
select '008','˼�����','004' union
select '009','������ѧʷ','012' union
select '010','���Դ���','017' union
select '011','���������','013' union
select '012','AUTO CAD��ͼ','015' union
select '013','ƽ�����','011' union
select '014','Flash����','001' union
select '015','Java����','009' union
select '016','C#����','002' union
select '017','Oracl���ݿ�ԭ��','010'
--�ɼ�������
insert into tb_Score
select '1001','003',90 union
select '1001','002',87 union
select '1001','001',96 union
select '1001','010',85 union
select '1002','003',70 union
select '1002','002',87 union
select '1002','001',42 union
select '1002','010',65 union
select '1003','006',78 union
select '1003','003',70 union
select '1003','005',70 union
select '1003','001',32 union
select '1003','010',85 union
select '1003','011',21 union
select '1004','007',90 union
select '1004','002',87 union
select '1005','001',23 union
select '1006','015',85 union
select '1006','006',46 union
select '1006','003',59 union
select '1006','004',70 union
select '1006','001',99 union
select '1007','011',85 union
select '1007','006',84 union
select '1007','003',72 union
select '1007','002',87 union
select '1008','001',94 union
select '1008','012',85 union
select '1008','006',32 union
select '1009','003',90 union
select '1009','002',82 union
select '1009','001',96 union
select '1009','010',82 union
select '1009','008',92 union
select '1010','003',90 union
select '1010','002',87 union
select '1010','001',96 union
select '1011','009',24 union
select '1011','009',25 union
select '1012','003',30 union
select '1013','002',37 union
select '1013','001',16 union
select '1013','007',55 union
select '1013','006',42 union
select '1013','012',34 union
select '1000','004',16 union
select '1002','004',55 union
select '1004','004',42 union
select '1008','004',34 union
select '1013','016',86 union
select '1013','016',44 union
select '1000','014',75 union
select '1002','016',100 union
select '1004','001',83 union
select '1008','013',97
--
SELECT*FROM tb_student
SELECT*FROM tb_course
SELECT*FROM tb_score
SELECT*FROM tb_teacher
--1��	��ѯ��001���γ̱ȡ�002���γ̳ɼ��ߵ�����ѧ����ѧ�ţ�
 
--2��	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT sc.sid as ѧ��,AVG(sc.score) as ƽ���ɼ�  from tb_score sc 
GROUP BY sc.sid HAVING AVG(sc.score)>60
--3��	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
 SELECT s.sid, s.sname,COUNT(sc.score),SUM(sc.score) 
  from tb_student s, tb_score sc
   group BY sc.sid
--4��	��ѯ�ա������ʦ�ĸ���
 SELECT COUNT(t.tname)as �������ʦ�ĸ���   from tb_teacher t WHERE t.tname LIKE '��%'
--5��	��ѯûѧ����Ҷƽ����ʦ�ε�ͬѧ��ѧ�š�����

--6��	��ѯѧ����001������Ҳѧ����š�002���γ̵�ͬѧ��ѧ�š�������

--7��	��ѯѧ����Ҷƽ����ʦ���̵����пε�ͬѧ��ѧ�š�������

--8��	��ѯ�γ̱�š�002���ĳɼ��ȿγ̱�š�001���γ̵͵�����ͬѧ��ѧ�š�����

--9��	��ѯ���пγ̳ɼ�С��60�ֵ�ͬѧ��ѧ�š�����

--10��	��ѯû��ѧȫ���пε�ͬѧ��ѧ�š�����

