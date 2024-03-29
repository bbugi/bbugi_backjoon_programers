-- 코드를 입력하세요
# SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
# FROM USED_GOODS_USER AS UU
# JOIN USED_GOODS_BOARD AS UB
# ON UU.USER_ID = UB.WRITER_ID
# WHERE UB.STATUS = 'DONE'
# GROUP BY UU.USER_ID

SELECT UU.USER_ID, UU.NICKNAME, TMP2.TOTAL_SALES
FROM (SELECT *
FROM (SELECT WRITER_ID, STATUS, SUM(PRICE) AS TOTAL_SALES
    FROM USED_GOODS_BOARD
    WHERE STATUS = 'DONE'
    GROUP BY WRITER_ID) AS TMP
WHERE TMP.TOTAL_SALES >= 700000) AS TMP2
JOIN USED_GOODS_USER AS UU
ON TMP2.WRITER_ID = UU.USER_ID
ORDER BY TOTAL_SALES
