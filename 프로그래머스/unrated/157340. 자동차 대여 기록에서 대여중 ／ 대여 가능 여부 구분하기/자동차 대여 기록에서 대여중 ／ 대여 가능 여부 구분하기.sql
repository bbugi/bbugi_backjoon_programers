-- 코드를 입력하세요
SELECT CAR_ID, MAX(IF(START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16', '대여중','대여 가능')) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC



# SELECT CAR_ID, CASE 
# WHEN START_DATE < '2022-10-16' AND END_DATE >= '2022-10-16' THEN '대여중'
# ELSE '대여 가능' END AS AVAILABILITY
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# GROUP BY CAR_ID
# HAVING MAX(AVAILABILITY)
# ORDER BY CAR_ID DESC

# SELECT DISTINCT CAR_ID, '대여 가능' AS AVAILABILITY
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS CH1
# OUTER LEFT JOIN (SELECT CAR_ID
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# WHERE START_DATE < '2022-10-16' AND END_DATE >= '2022-10-16') AS TMP
# ON CH1.CAR_ID = TMP.CAR_ID