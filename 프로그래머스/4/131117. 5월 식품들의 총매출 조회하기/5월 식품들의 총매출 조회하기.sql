-- 코드를 입력하세요
WITH O AS (SELECT PRODUCT_ID, SUM(AMOUNT) AS TOTAL_AMOUNT
             FROM FOOD_ORDER
             WHERE PRODUCE_DATE BETWEEN '2022-05-01' AND '2022-05-31'
             GROUP BY PRODUCT_ID)
SELECT P.PRODUCT_ID, P.PRODUCT_NAME, (P.PRICE * O.TOTAL_AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT AS P
JOIN O
ON P.PRODUCT_ID = O.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID;