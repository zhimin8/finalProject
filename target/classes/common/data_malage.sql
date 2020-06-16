--0616 지민 관리자 데이터 insert
insert into tb_member values(seq_memberNo.nextval, '관리자1', 'admin', 'admin', '20200616', 'admin', 'admin', 00000 , '경기도','수원시', 'N', sysdate, null, null, 'N','N');
insert into tb_member values(seq_memberNo.nextval, '관리자2', 'admin2', 'admin', '20200616', 'admin', 'admin', 00000 , '경기도','수원시', 'N', sysdate, null, null, 'N','N');
insert into tb_member values(seq_memberNo.nextval, '관리자3', 'admin3', 'admin', '20200616', 'admin', 'admin', 00000 , '경기도','수원시', 'N', sysdate, null, null, 'N','N');
select * from TB_MEMBER;
commit