select *
from (select 
               rownum as r,
               TRIP_BOARD_KEY,
               USER_NUM,
               user_nick,
               USER_PROFILE_PIC,
               TRIP_BOARD_TITLE,
               TRIP_BOARD_COUNTENT,
               TRIP_BOARD_START,
               TRIP_BOARD_END,
               TRIP_BOARD_TOGETHER,
               TRIP_BOARD_READCOUNT,
               TRIP_BOARD_ST
        from (select    b.TRIP_BOARD_KEY,
                        u.USER_NUM,
                        nvl(u.USER_NICK,'no-name') as user_nick,
                        u.USER_PROFILE_PIC,
                        b.TRIP_BOARD_TITLE,
                        b.TRIP_BOARD_COUNTENT,
                        b.TRIP_BOARD_START,
                        b.TRIP_BOARD_END,
                        b.TRIP_BOARD_TOGETHER,
                        b.TRIP_BOARD_READCOUNT,
                        b.TRIP_BOARD_ST
                        from trip_board_tb b join user_tb u
                        on b.user_num  = u.user_num
                        order by b.TRIP_BOARD_KEY desc ))
where r between 11 and 18 