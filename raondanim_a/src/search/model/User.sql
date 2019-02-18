CREATE TABLE user_table(
    USER_NUM            NUMBER(10)       NOT NULL, 
    USER_ST             NUMBER(10)       DEFAULT 0 NOT NULL, 
    USER_ID             VARCHAR2(50)     NOT NULL, 
    USER_PW             VARCHAR2(60)     NOT NULL, 
    USER_FNM            VARCHAR2(50)     NOT NULL, 
    USER_LNM            VARCHAR2(50)     NOT NULL, 
    USER_REG_DATE       DATE             DEFAULT sysdate NOT NULL, 
    USER_VERIFY         NUMBER(10)       DEFAULT 0 NOT NULL, 
    USER_VERIFY_CODE    VARCHAR2(50)     NULL, 
    USER_NICK           VARCHAR2(50)     NULL, 
    USER_NATION         VARCHAR2(50)     NULL, 
    USER_LIVE_CITY      VARCHAR2(50)     NULL,
    USER_TRAVLE_CITY    VARCHAR2(50)     NULL, 
    USER_PHONE_NUM      VARCHAR2(30)     NULL, 
    USER_INTRO          VARCHAR2(50)     NULL, 
    USER_ACCOM_ST       NUMBER(10)       DEFAULT 0 NULL, 
    USER_BIRTH_DATE     DATE             NULL, 
    USER_GENDER         NUMBER(10)       DEFAULT 0 NULL, 
    USER_PROFILE_PIC    VARCHAR2(100)    DEFAULT 0 NOT NULL, 
    CONSTRAINT USER_TABLE_PK PRIMARY KEY (USER_NUM)
);

CREATE SEQUENCE USER_TBABLE_SEQ
START WITH 1
INCREMENT BY 1;

select u.user_num, u.user_st, u.user_id, u.user_pw, u.user_fnm, u.user_lnm, u.user_reg_date, u.user_nick, u.user_nation, u.user_city, u.user_intro, u.user_gender, l.user_lang
from user_table u
left outer join language_table l
on u.user_num = l.user_num
where l.user_lang= '한국어';