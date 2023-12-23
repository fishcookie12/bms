USE bms;

CREATE TABLE ORDERS(
    ORDER_CD            BIGINT AUTO_INCREMENT PRIMARY KEY,
    MEMBER_ID           VARCHAR(20),
    BOOK_CD             INT,
    BOOK_NM             VARCHAR(500),
    ORDER_BOOK_QTY      INT,
    TOTAL_PRICE         INT,
    PAYMENT_METHOD      VARCHAR(20),
    HP                  INT,
    RECEIVER            VARCHAR(20),
    DELIVERY_ADRESS     VARCHAR(200),
    DELIVERY_MESSAGE    VARCHAR(300),
    DELIVERY_STATUS     VARCHAR(100),
    ORDER_DT            TIMESTAMP
);